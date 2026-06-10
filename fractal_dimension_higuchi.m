function FD = fractal_dimension_higuchi(signal, k_max)
    % Function to calculate Fractal Dimension (FD) using Higuchi's method
    %
    % Inputs:
    % signal - MEG signal (1D array)
    % k_max  - Maximum scale for the Higuchi method
    %
    % Output:
    % FD - Calculated Fractal Dimension

    if nargin < 2
        k_max = 10; % Default value if k_max not provided
    end

    N = length(signal); % Length of the signal
    Lk = zeros(1, k_max); % Store curve lengths for each k

    % Loop through each scale k
    for k = 1:k_max
        Lm = zeros(1, k); % Lengths for each m (starting point)
        for m = 1:k
            % Calculate the length of the curve for this m and k
            sum_length = 0;
            count = 0;
            for i = m:k:N-k
                if (i + k) <= N
                    sum_length = sum_length + abs(signal(i + k) - signal(i));
                    count = count + 1;
                end
            end
            norm_factor = (N - 1) / (count * k); % Normalization factor
            Lm(m) = (sum_length * norm_factor) / k;
        end
        % Average length for this k
        Lk(k) = mean(Lm);
    end

    % Log-log regression to estimate slope (Fractal Dimension)
    log_k = log(1 ./ (1:k_max)); % log(1/k)
    log_Lk = log(Lk); % log(Lk)
    p = polyfit(log_k, log_Lk, 1); % Linear regression
    FD = abs(p(1)); % Fractal Dimension is the absolute value of the slope
end
