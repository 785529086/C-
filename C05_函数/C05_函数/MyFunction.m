//
//  MyFunction.m
//  C05_函数
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "MyFunction.h"

/*  函数的实现  */
int max(int x , int y )
{
    return x > y ? x : y ;
}
void addofArg(int x , int y)
{
//  输出形参的地址
    printf(" x add : %p\n",&x);
    printf(" y add : %p\n",&y);
}
void Temp(int x , int  y)
{
    int temp = 0;
    temp = x;
    x = y ; 
    y = temp ;
    printf("  x = %d  y = %d",x , y);
}
int Maxvalue1(int a ,int b)
{
    int max1 = INT16_MIN;
    max1 = a > b ? a : b;
    return max1;
}
int Maxvalue2(int a ,int b ,int c)
{
//    Maxvalue1(a, b);
//    Maxvalue1(Maxvalue1(a, b), c);
    return Maxvalue1(Maxvalue1(a, b), c);
}
int Maxvalue3(int a,int b ,int c ,int d)
{
//    Maxvalue2(a, b, c);
    return Maxvalue1(Maxvalue2(a, b, c), d);
}
int Maxvalue4(int a ,int b ,int c ,int d ,int f)
{
//    Maxvalue3(a, b, c, d);
    return Maxvalue1(Maxvalue3(a, b, c, d), f);
}
void sortArray(int array[ ] , int  count )
/*冒泡排序*/
{
    int temp = 0;
    int flag = 1;
    for(int i = 1 ; flag == 1 && i < count - 1;i++)
    {
        flag  = 0 ;
        for( int j = 0; j < count - 1 - i; j++ )
        {
        if( array [ j ] < array [ j + 1])
        {
            temp = array [ j ];
            array [ j ] = array [ j + 1 ];
            array [ j + 1 ] = temp;
            flag = 1;
        }
        }
    }
    for (int i = 0; i < count; i++)
    {
        printf("%d",array [ i ]);
}
}

