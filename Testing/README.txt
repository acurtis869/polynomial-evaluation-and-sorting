This is a package for testing a whether two functions, Simple.m and Sparse.m,
are working correctly by implementing various different tests for correctness.

There are five tests for Simple.m and eight tests for Sparse.m. Most of the tests
will test if the code can come up with the correct answer given the inputs whilst
a few for each will test if the code comes up with an error in a place in which it
should not work.

The main driver functions are TestSimple and TestSparse which will call upon other 
smaller functions that are in the same folder with the name testsimple and testsparse
followed by the number of the test.

testsimple1   a trivial test: 1x1 matrix with x to the power 0
testsimple2   2x2 matrix with x to the power of 0 still
testsimple3   tests 2x2 matrices with a higher power of x than 0
testsimple4   tests imcompatible matrices so should give an error
testsimple5   checks non-square matrices that should be compatible with slightly more
	      complex inputs

testsparse1   a trivial test: 1x1 matrices with only the power 1
testsparse2   1x1 matrices but with more than one power of x being tested
testsparse3   same as in testsparse2 but with 2x2 matrices now
testsparse4   tests non-square matrices that are still compatible
testsparse5   checks if the code has an error for a different amount of coeffients than
	      the amount of powers given
testsparse6   tests for an error when given incompatible matrices
testsparse7   tests for an error when index given is not a row vector
testsparse8   checks that the code can cope with complex, negative and non-integer
              numbers

printError - is the JHD file from moodle without any changes made.
