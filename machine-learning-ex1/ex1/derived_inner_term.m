function [ret] = derived_inner_term(X, y, feature_vector, theta)
  % dont need attached because it comes attached
  % X_attached = [ones(length(X), 1) X];
  inner = (X * theta);
  inner_prime = inner - y;
  adjusted = feature_vector' * inner_prime; % this order in important to get a vector, otherwise you get an m * m matrix
  ret = sum(adjusted);
end

