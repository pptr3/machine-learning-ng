function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

new_centroids = zeros(K, n + 1);

for i=1:m
<<<<<<< HEAD
	new_centroids(idx(i), 1:n) += X(i, :);
	new_centroids(idx(i), n + 1) += 1;
=======
	new_centroids(idx(i), 1:2) += X(i, :);
	new_centroids(idx(i), 3) += 1;
>>>>>>> c0bdfeecc4f0c362ad2f0d95dcb59b822ed2eb59
end


for i=1:K
<<<<<<< HEAD
	div = new_centroids(i, n + 1);
	centroids(i, :) = new_centroids(i, 1:n)./div;
=======
	div = new_centroids(i, 3);
	centroids(i, :) = new_centroids(i, 1:2)./div;
>>>>>>> c0bdfeecc4f0c362ad2f0d95dcb59b822ed2eb59
end





% =============================================================


end

