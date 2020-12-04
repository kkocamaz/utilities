function [ out ] = Generate_Uniform_Random_Int( min,max,increment,n_sample)
%UNTÝTLED2 Summary of this function goes here
%   Detailed explanation goes here

out=min+increment*randi([0,(max-min)/increment],n_sample,1);
end

