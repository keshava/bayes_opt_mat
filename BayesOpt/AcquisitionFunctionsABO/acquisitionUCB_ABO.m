% Upper Confidence Bound acquistion function for adaptive Bayesian optimization
% from Srinivas et. al (2010) [Gaussian Processes for Global Optimization]. 
% It is based on the maximization formalisation of the global optimisation
% problem, 
%
%                         MAX f(t, x), where t known apriori.
%
% NOTE: To find optimal position to sample, MAXIMIZE this acquisition function. 
%
% Usage:
%
%   [ucb, g, post_metadata] = acquisitionUCB_ABO(x0, metadata)
%
%   where
%
%       x0:             Sample position [N X DIM] vector or matrix
%       metadata:       Struct of metadata from a GP training 
%       ucb:            Upper confidence bounds (NB: The higher, the better) 
%       g:              Gradient of UCB function
%       post_metadata:  Post-processing struct metadata from GP prediction
%
% See also: trainGP.m, predictGPR.m
%
% Copyright (c) by Favour Mandanji Nyikosa (favour@robots.ox.ac.uk),2017-APR-29

function [ucb, g, post_metadata] = acquisitionUCB_ABO(x0, metadata)

    current_time            = metadata.current_time_abo;
    x0                      = [current_time, x0];
    [ucb, g, post_metadata] = acquisitionUCB(x0, metadata);
    
end