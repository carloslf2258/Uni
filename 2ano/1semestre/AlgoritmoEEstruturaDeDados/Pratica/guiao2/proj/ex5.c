#include<stdio.h>
#include <stdlib.h>

// The coefficients of a degree n polynomial
// are stored in an array p of size (n + 1)
// p[0] is the coefficient of the largest degree term
// p[n] is the coefficient of the zero-degree term
// Display a polynomial
// Pre-Conditions: coef != NULL and degree >= 0
// Example of produced output: 
// Pol(x) = 1.000000 * x^2 + 4.000000 * x^1 + 1.000000
void DisplayPol(double* coef, size_t degree) {
    
}
// Compute the value of a polynomial using Horner’s method:
// Pre-Conditions: coef != NULL and degree >= 0
double ComputePol(double* coef, size_t degree, double x) {

}
// Test example: 
// Pol(x) = 1.000000 * x^2 + 4.000000 * x^1 + 1.000000
// Pol(2.000000) = 13.000000
// Compute the real roots, if any, of a second-degree polynomial
// Pre-Conditions: coef != NULL and degree == 2 and coef[0] != 0
// Pre-Conditions: root_1 != NULL and root_2 != NULL
// Return values: 0 -> no real roots
// 1 -> 1 real root with multiplicity 2
// 2 -> 2 distinct real roots
// The computed root values are returned via the root_1 and root_2
// pointer arguments
// Assign 0.0 to the *root_1 and *root_2 if there are no real roots
unsigned int 
GetRealRoots(double* coef, size_t degree, double* root_1, double* root_2) {

}

int main(){
    return 0;
}