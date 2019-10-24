function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)

Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));


m = size(X, 1);
d=0;
for i=1:m
    a1=sigmoid(Theta1*[1;X(i,:)']);
    h=sigmoid(Theta2*[1;a1]);
    k=[1;2;3;4;5;6;7;8;9;10];
    z=(k==y(i));
    n=0;
    for k=1:num_labels
        n=n+(-z(k)*log(h(k))-(1-z(k))*log(1-h(k)));
    end
    a(i)=n;
    d=d+n;
end
         

J = (sum(a)/m)+(lambda/(2*m))*(sum(sum((Theta1(:,2:input_layer_size+1)).^2))+sum(sum((Theta2(:,2:hidden_layer_size+1)).^2)));
%BACK PROPOGATION
D1=zeros(hidden_layer_size,input_layer_size+1);D2=zeros(num_labels,hidden_layer_size+1);
for i=1:m
    a1=sigmoid(Theta1*[1;X(i,:)']);
    h=sigmoid(Theta2*[1;a1]);
    for j=1:num_labels
        k(j)=j;
    end
    z=(k==y(i));
    z=z';
    d3=(h-z);

    d2=((Theta2)'*d3).*sigmoidGradient([1;Theta1*[1;X(i,:)']]);
    D1=D1+d2(2:end)*[1;X(i,:)']';
    D2=D2+d3*[1;a1]';
end
Theta1_grad = D1/m;
Theta1_grad = [Theta1_grad(:,1) Theta1_grad(:,2:end)+(lambda/m)*Theta1(:,2:end)];
Theta2_grad = D2/m;
Theta2_grad = [Theta2_grad(:,1) Theta2_grad(:,2:end)+(lambda/m)*Theta2(:,2:end)];

grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
