%% =========================================================================
% TITLE: Plotting OED and non-OED results for washing process
% DESCRIPTION: Loads simulation and prediction data, generates figures,
%              violin plots, and LaTeX table of parameter uncertainties.
% =========================================================================

clear all;
close all;
clc;

%% 1. Load simulation data
load('results/data_OED_and_nonOED_exps.mat');

%% 2. Loop over OED and non-OED cases
for ii = 1:2
    % Default: OED case
    fig_name = 'results/fig_OED';
    pos_label = [0.5726, 0.5346];

    if ii == 2
        % Non-OED case setup
        fig_name = 'results/fig_noOED';
        pos_label = [0.7618, 0.7916];

        % Reconstruct OED-like structure for non-OED data
        res.oed = [];
        res.sim = [];
        res.oed.t_s = inputs.exps.t_s;
        res.oed.u = inputs.exps.u;
        res.oed.t_con = inputs.exps.t_con;
        res.sim = res.obsNoOED.sim;
        res.oed.conf_intervals = res.PENoOED.fit.conf_interval;
    end

    %% 3. Plot experimental design and sampling
    figure;
    set(gcf, 'OuterPosition', [794, 407, 887, 440]);

    % Input profile and sampling points
    subplot(211);
    stairs([0 res.oed.t_con{1}./60], [0 res.oed.u{1}(1,:) 0], 'LineWidth', 2); hold on;
    plot(res.oed.t_s{1}./60, ones(size(res.oed.t_s{1})),'r^','MarkerSize',7,...
        'MarkerFaceColor','r','MarkerEdgeColor','r');
    xlim([-10/60, 8]);
    xlabel('Time (h)');
    ylabel('F_{add} (g/addition)');

    % Annotate key input events
    str1 = ['F_{add}(t=' num2str(inputs.exps.t_con{1}(3)/60) ')= ' num2str(res.oed.u{1}(1,3)) 'g'];
    annotation(gcf, 'textarrow', pos_label, [0.8659, 0.8197], 'String', str1);

    str2 = ['F_{add}(t=0)= ' num2str(res.oed.u{1}(1,1)) 'g'];
    annotation(gcf, 'textarrow', [0.1859, 0.1581], [0.6947, 0.6431], 'String', str2);

    %% 4. Plot simulation results
    t = res.sim.tsim{1};

    subplot(234);
    plot(t./60, res.sim.obs{1}(:,1), 'b', 'LineWidth', 2);
    ylabel('X (log10(CFU)/100mL)');
    xlabel('Time (h)');

    subplot(235);
    plot(t./60, res.sim.obs{1}(:,2), 'm', 'LineWidth', 2);
    ylabel('COD (ppm)');
    xlabel('Time (h)');

    subplot(236);
    plot(t./60, res.sim.obs{1}(:,3), 'c', 'LineWidth', 2);
    ylabel('FC (ppm)');
    xlabel('Time (h)');

    % Save figure
    hgsave(fig_name);


    %% 5. Generate LaTeX table of parameters and uncertainties (OED only)

    if ii == 1
        conf = res.oed.conf_intervals;             % Confidence intervals
    else
        conf = res.PENoOED.fit.conf_interval;             % Confidence interval
    end
    par = inputs.model.par(4:9);               % Central values

    scaling = [1e2, 1e7, 1, 1e3, 1e-4, 1];      % Scaling factors
    params = {'$k_{\text{COD}}$', '$k_{\text{X}}$', '$\alpha$', ...
        '$k_{m}$', '$\beta$', '$\gamma$'};
    units  = {'-', '-', '-', '-', '-', '-'};

    fprintf('    \\begin{tabular}{l c c c}\n');
    fprintf('        Para. & Scaling·(Value ± Confidence) & %% & Units \\\\\n');
    fprintf('        \\hline\n');

    for i = 1:length(par)
        fprintf('        %s & \\(%g \\cdot (%0.2f \\pm %0.2f)\\) & %0.2f & %s \\\\\n', ...
            params{i}, scaling(i), par(i), conf(i), 100 * conf(i) / par(i), units{i});
    end

    fprintf('        \\hline\n');
    fprintf('    \\end{tabular}\n');


    %% 6. Load and plot CorePred results

    if ii == 1
        load('results/data_CorePred.mat');
        fig_name='fig_CorePred';
    else
        load('results/data_CorePred_nonOED.mat');
        fig_name='fig_CorePred_nonOED';
    end

    nv = size(FC_mc(2:end,:), 1);
    tref = t_mc(2:end) / 60;

    close all;
    figure;
    set(gcf, 'OuterPosition', [1838, 816, 564, 702]);

    % Microbial concentration
    subplot(311);
    violinplot(log10(0.1 * X_mc(2:end,:)' + 1)); hold on;
    plot(linspace(0, nv, size(Xor,1)), log10(0.1 * Xor + 1), 'k');
    set(gca, 'XTickLabel', {t_mc(2:end)/60});
    ylabel('X (log10(CFU)/100mL)');

    % COD
    subplot(312);
    violinplot(COD_mc(2:end,:)'); hold on;
    plot(linspace(0, nv, size(CODor,1)), CODor, 'k');
    set(gca, 'XTickLabel', {t_mc(2:end)/60});
    ylabel('COD (ppm)');

    % Free chlorine
    subplot(313);
    violinplot(FC_mc(2:end,:)'); hold on;
    plot(linspace(0, nv, size(FCor,1)), FCor, 'k');
    set(gca, 'XTickLabel', {t_mc(2:end)/60});
    xlabel('Time (h)');
    ylabel('FC (ppm)');

    % Save figure
    hgsave(fig_name);
end



% our internal code to generate pdfs croped, write miriamr@iim.csic.es if
% you want to use this part
% cd results; fig4latex; cd ..