%% CEC2019
% 2024/11
% fobj = @YourCostFunction
% dim = number of your variables
% Max_iteration = maximum number of generations
% SearchAgents_no = number of search agents
% lb=[lb1,lb2,...,lbn] where lbn is the lower bound of variable n
% ub=[ub1,ub2,...,ubn] where ubn is the upper bound of variable n

clear all 
close all
clc

Function_name=6;    % CEC2019: 1-10 (1-3 no maps, according to the reference literature)

SearchAgents_no=30; % Number of search agents
Max_iteration=300;  % Maximum numbef of iterations

% Load details of the selected benchmark function
[lb,ub,dim,fobj]=Get_Functions_cec2019(Function_name); 
[Best_score,Best_pos,cg_curve]=OOA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);

%%
figure('Position',[400 400 900 350])

%Draw search space
subplot(1,2,1);
func_plot(Function_name);
title('Parameter space')
xlabel('x_1');
ylabel('x_2');
zlabel('F( x_1 , x_2 )');

%Draw objective space
subplot(1,2,2);
semilogy(cg_curve,'Color','r');
title('Objective space');
xlabel('Iteration');
ylabel('Best score obtained so far');
axis tight
grid on
box on
legend('OOA');
display(['The best solution obtained by OOA is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by OOA is : ', num2str(Best_score)]);

        



