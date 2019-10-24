clear ; close all; clc
input_layer_size  = 228;  
hidden_layer_size = 25;   
num_labels = 10;          
load 'normlpcdatabase.mat';
X=K;
y=L;
m = size(X, 1);
fprintf('\nInitializing Neural Network Parameters ...\n')

initial_Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
initial_Theta2 = randInitializeWeights(hidden_layer_size, num_labels);


initial_nn_params = [initial_Theta1(:) ; initial_Theta2(:)];
fprintf('\nChecking Backpropagation... \n');


checkNNGradients;

fprintf('\nProgram paused. Press enter to continue.\n');
pause;
fprintf('\nTraining Neural Network... \n')

options = optimset('MaxIter',100);

lambda = 0.6;

costFunction = @(p) nnCostFunction(p, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, X, y, lambda);


[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);


Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

fprintf('Program paused. Press enter to continue.\n');
pause;


pred = predict(Theta1, Theta2, X);
save('voicetrainfinal.mat','Theta1','Theta2');

disp('Trained successfully');
