//
//  ell.c
//  Ell
//
//  Created by Anna Kiriliouk on 1/29/13.
//  Modified by Johan Segers on 13/12/2013. ;-)
//  Copyright (c) 2013 Anna Kiriliouk. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include <R.h>
#include <Rmath.h>


void stdf(int *col1, int *col2, int *n, int *k, double *result)
{
    int i;
    double sum, temp1, temp2;

    sum = 0;
    for( i = 0; i < *n; i++ ){
        temp1 = (*n + 0.5 - col1[i])/(*k);
        temp2 = (*n + 0.5 - col2[i])/(*k);
        if (temp1 < 1) {
          if (temp2 < 1) {
            sum += ((1 - temp1) + (1 - temp2) - (1 - temp1)*(1 - temp2));
          } else {
            sum += (1 - temp1);
          }
        } else if (temp2 < 1) {
          sum += (1 - temp2);
        }
    }
    *result = (sum/(*k));
}

void I3smith2(double *x, double *a, double *result)
{
    double lxa;
    
    lxa = log(*x)/(*a); 
    *result = ((pnorm((((*a))/2 + lxa),0,1,1,0)) + ((*x)*exp((*a)*(*a)))*pnorm(((-1.5)*(*a) -
                                                                                         lxa),0,1,1,0));
}

void ellsmith2(double *t, double *a, double *result)
{
    double ahalf, delta;
    
    ahalf = ((*a)/2); 
    delta = (log(t[0]/t[1]) / (*a));
    
    *result = (t[0]*pnorm((ahalf + delta),0,1,1,0) +
               t[1]*pnorm((ahalf - delta),0,1,1,0));
}


