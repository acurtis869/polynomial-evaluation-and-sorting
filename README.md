# MATLAB Polynomial Evaluation and Sorting
This repository contains MATLAB functions designed for polynomial evaluation and sorting. The primary focus is on implementing and utilizing polynomial evaluation through Horner's Rule, both in sparse and unsorted forms, along with a custom insertion sort and a utility function to find elements in an array.

## Functions
This folder contains six functions with the following objectives:

### Find.m
The Find function locates the positions of a given element k in a matrix F and returns these positions in vector G. If the element is not found, it throws an error.

### myIsort.m

The myIsort function performs an insertion sort on a row vector in, returning a sorted row vector out.
### Sparse.m
The Sparse function evaluates a polynomial at a given value x using a sparse representation of Horner's Rule. It expects the indices of the polynomial terms to be sorted and provided in index.

### Unsorted.m
The Unsorted function evaluates a polynomial at a given value x using a sparse representation of Horner's Rule, but it allows for unsorted indices. It internally sorts the indices and rearranges the coefficient matrix before evaluation.

### myexpt.m
The myexpt function computes the matrix exponentiation of A raised to the power of n. It handles various cases of n, ensuring it is non-negative.

### Simple.m
The Simple function evaluates a polynomial at a given value x using Horner's Rule. It processes the coefficients provided in a to compute the polynomial value efficiently.

## Testing
This folder contains functions designed to test whether the functions work as expected. Further details included in the folder's README
