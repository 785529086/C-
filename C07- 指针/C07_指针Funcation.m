//
//  C07_指针Funcation.m
//  C07- 指针
//
//  Created by dllo on 15/11/25.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "C07_指针Funcation.h"
void exchangeTwoNumber(int *x, int *y)
{
    int temp = *x;
    *x = *y ;
    *y = temp;
}
void sortArr( int*array , int count )
{
    int temp = 0;
    for (int i = 0; i < count - 1; i ++) {
        for (int j = 0; j < count - 1 - i; j ++ ) {
            if (*(array + j ) > *(array + j +1 ) ) {
                temp = *(array + j );
                *(array + j) = * (array + j +1);
                *(array + j + 1) = temp;
            }
        }
    }
    for (int i = 0; i < count  ; i++) {
        printf("%d   ",*(array + i));
    }
    printf("\n");
}