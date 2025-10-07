

function dat = build_dat_from_ods(odsPath, sheetName)
% build_dat_from_ods
%
% Use:
%   dat = build_dat_from_ods('[file_name].ods','Exp_data_WithoutDisinfectant');
%
% Sheet (ODS file) must contain the following columns:
%   ID, Experiment_Case, Visit, Product, Process, Category, Objective,
%   Volume_L, Washing_time_sec, Sampling_times_min, Total_count_CFU_mL,
%   Listeria_CFU_mL, E_coli_CFU_mL, Disinfectant_mg_L, COD_mg_L, pH,
%   Temperature_Celsius, Kg_product_processed
%
% microbiological counts are multiplied by 1000 for a unit matter.

    if nargin < 2 || isempty(sheetName)
        sheetName = 'Exp_data_WithoutDisinfectant';
    end

    T = readtable(odsPath, 'FileType','spreadsheet', 'Sheet', sheetName);

    % Ensure expected columns (in case Excel/ODS does something different)
    strCols = {'ID','Product','Process','Category'};
    for c = strCols
        if ~ismember(c{1}, T.Properties.VariableNames)
            error('Columna faltante: %s', c{1});
        end
            T.(c{1}) = string(T.(c{1}));
    end

    numCols = {'Experiment_Case','Visit','Objective','Volume_L','Washing_time_sec',...
               'Sampling_times_min','Total_count_CFU_mL','Listeria_CFU_mL','E_coli_CFU_mL',...
               'Disinfectant_mg_L','COD_mg_L','pH','Temperature_Celsius','Kg_product_processed'};
    for c = numCols
        if ~ismember(c{1}, T.Properties.VariableNames)
            error('Columna faltante: %s', c{1});
        end
        if ~isnumeric(T.(c{1}))
            T.(c{1}) = double(T.(c{1}));
        end
    end

    % Find "block headings" (Rows where a new ID is defined)
    isHeader = ~ismissing(T.ID) & T.ID ~= "";
    headerIdx = find(isHeader);
    if isempty(headerIdx)
        error('No se encontraron bloques (filas con ID no vacío).');
    end
    
    % Initialize structure with cells
    iexp = 0;
    dat = struct();
    campos = {'info','infoProd','infoProc','infoCat','infoID', ...
              'ts','Nw','Nlis','ecol','Dis','COD','pH','T','Kgp','V','M','tau'};
    for f = campos
        dat.(f{1}) = {};
    end
    
    % Sweep over block
    for k = 1:numel(headerIdx)
        i0 = headerIdx(k);
    
        % FIX: Avoid heading indexing Idx(k+1) in the last block
        if k < numel(headerIdx)
            i1 = headerIdx(k+1) - 1;
        else
            i1 = height(T);
        end
    
        rows = i0:i1;
    
        % Block metadata
        ID          = strrep(T.ID(i0), " ", "_");
        caseNum     = T.Experiment_Case(i0);
        visitNum    = T.Visit(i0);
        prod        = T.Product(i0);
        proc        = T.Process(i0);
        cat         = T.Category(i0);
        objective   = T.Objective(i0);
        V_L         = T.Volume_L(i0);
        wash_sec    = T.Washing_time_sec(i0);
        tau_min     = wash_sec/60;
    
        % --- Series
        ts      = T.Sampling_times_min(rows).';
        Nw      = T.Total_count_CFU_mL(rows).';
        Nlis    = T.Listeria_CFU_mL(rows).';
        ecol    = T.E_coli_CFU_mL(rows).';
        Dis     = T.Disinfectant_mg_L(rows).';
        COD     = T.COD_mg_L(rows).';
        pH      = T.pH(rows).';
        Temp    = T.Temperature_Celsius(rows).';
        Kgp     = T.Kg_product_processed(rows).';
    
        % --- Postprocessing rules (CFU/mL → CFU/L)
        Nw   = 1000 .* Nw;
        Nlis = 1000 .* Nlis;
        ecol = 1000 .* ecol;
    
        % Ensure cases start from time t=0
        if isempty(ts) || ts(1) ~= 0
            ts   = [0, ts];
            Nw   = [0, Nw];
            Nlis = [0, Nlis];
            ecol = [0, ecol];
            COD  = [0, COD];
            Kgp  = [0, Kgp];
            if ~isempty(Dis), Dis = [Dis(1), Dis]; end
            if ~isempty(pH),  pH  = [pH(1),  pH];  end
            if ~isempty(Temp),Temp = [Temp(1),Temp]; end
        end
    
        % Computed values from inputs
        Vvec = V_L .* ones(size(Dis));
        temporalVar = tau_min .* diff(Kgp) ./ diff(ts);
        Mvec = [temporalVar, temporalVar(end)];
    
        % Acumulate
        iexp = iexp + 1;
        dat.info{iexp}     = sprintf('Case %g, Visit %g', caseNum, visitNum);
        dat.infoProd{iexp} = char(prod);
        dat.infoProc{iexp} = char(proc);
        dat.infoCat{iexp}  = char(cat);
        dat.infoID{iexp}   = char(ID);
    
        dat.ts{iexp}   = ts;
        dat.Nw{iexp}   = Nw;
        dat.Nlis{iexp} = Nlis;
        dat.ecol{iexp} = ecol;
    
        dat.Dis{iexp}  = Dis;
        dat.COD{iexp}  = COD;
        dat.pH{iexp}   = pH;
        dat.T{iexp}    = Temp;
        dat.Kgp{iexp}  = Kgp;
    
        dat.V{iexp}    = Vvec;
        dat.M{iexp}    = Mvec;
        dat.tau{iexp}  = tau_min;
    end

    fprintf('%d experiments (visits) have been built from %s / %s\n', iexp, odsPath, sheetName);
end
