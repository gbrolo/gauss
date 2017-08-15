function [y] = gauss_jordan (x)    
    for n = 1:(length(x)-1)
        A = x(n,:);
        A = A/A(n);
        x(n,:) = A;
        for j = 1:(length(x)-1)
            if n~=j
                x(j,:) = A*(-1*x(j,n)) + x(j,:);
            end
        end
    end
    y = x(:,length(x))';
end