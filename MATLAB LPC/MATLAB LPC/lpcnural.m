function [train_acc]=lpcnural(lambda,no_iter,no_train)
input_layer_size  = 228;  
hidden_layer_size = 25;   
num_labels = 10;          
load 'normlpcdatabase.mat';
X=K(1:no_train,:);
y=L(1:no_train);
m = size(X, 1);
fprintf('\nInitializing Neural Network Parameters ...\n')

initial_Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
initial_Theta2 = randInitializeWeights(hidden_layer_size, num_labels);


initial_nn_params = [initial_Theta1(:) ; initial_Theta2(:)];
fprintf('\nChecking Backpropagation... \n');


checkNNGradients;

fprintf('\nProgram paused. Press enter to continue.\n');
fprintf('\nTraining Neural Network... \n')

options = optimset('MaxIter',no_iter);


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

pred = predict(Theta1, Theta2, X);
save('voicetrainfinal.mat','Theta1','Theta2');
train_acc=mean(double(pred == y)) * 100;

