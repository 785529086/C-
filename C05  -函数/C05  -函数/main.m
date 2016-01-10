//
//  main.m
//  C05  -函数
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 doll. All rights reserved.
//
#import <Foundation/Foundation.h>
void down();
/* 在工程中,通常是将函数的声明和实现单独放在不同的文件中,目的:解耦和查看方便
 *  详见,"C05_2函数" 工程    */
/** (1). 定义求两个整型数的最大值，并且把最大值返回给主调函数。 */
int maxnumber(int a , int b)
{
    int max = a > b ? a : b;
    return  max ;
}
/** (2). 定义求两个整型数的和，在该函数中打印和，不用把和返回给主调函数 */
void kSumNumber(int a ,int b)
{
    int sum1 = 0;
    sum1 = a + b ;
    printf("%d\n",sum1);
}
/** (3). 编写函数int sumValue(int n)：计算1到n的和 */
int sumValue(int n)
{
    int sum = 0;
    for (int i = 0; i <= n ; i++)
    {
        sum += i;
    }
    printf("sum = %d \n", sum);
    return sum;
}
/** (4). 编写函数，返回三个整数的中间数 */
int TempNumber(int a ,int b, int c)
{
    int max1 = INT16_MAX;
    int min1 = INT16_MIN;
    int temp = 0;
    max1 = a > b ? a : b;
    max1 = max1 >  c ? max1 : c;
    min1 =  a < b ? a : b;
    min1 = min1 < c ? min1 : c;
    if ( a != max1 && a != min1)
    {  temp = a;
        printf("temp = %d\n",temp);}
    if (b != max1 && b != min1)
    { temp = b;
        printf("temp = %d\n",temp);}
    if ( c != max1 && c != min1)
    {temp = c;
        printf("temp = %d\n",temp);}
    return temp;
}
#pragma mark  -知识点1  函数的分类
//函数分库函数 （ 系统提供的函数）和自定义函数（开发者自己开发的函数）
// 函数的语法：
//    返回值类型 函数名（形式参数列表）
/*  {
        语句;
        return 返回值;   注意 ： 返回值类型要和函数开头部分的返回值类型一致
 函数名:驼峰命名法,容易理解 起一个有意义的函数名称
    }
 *1.无返回值，无参数的函数*/
#if 1
void printfHello ()
    {
    printf ("hello ， world！\n");
/*  对于无返回值类型的函数， return 通常省略，但是如果加上return， 是可以的，但是return后面的语句不执行       主函数外头不能加花括号*/
        printf("hello ,everyone\n");
          return ;
    }
/*2.  无返回值， 有参数的函数  */
void printfNumber (int x , int  y)
{
    printf(" %d  %d\n", x, y);
    
}
/*3.  有返回值，无参数的函数 */
int numberTen()
{
    printf("有返回值 ， 无参数的函数:\n");
    return 10;
}
/* 4. 有返回值,有参数的函数  */
int sum(int x ,int y )
{
    return x + y;
}
/** (5). 编写函数，返回正整数n中的数字的个数 */
int CountNumber(int n)
{
    /*int count1 = 0;
     printf("请输入一个数字 :");
     scanf("%d",&number);
     while (number / 10 != 0)
     {
     count1++;
     
     number = number / 10;
     }
     return count1;*/
    int count = 0;
    do
    {
        count++;
    }
    while (n /= 10);
    return count;
}
#endif
#pragma mark  -知识点2  函数声明和定义
/*  函数声明 */
/*      后面有  " ; " 号   ,函数的声明,其中参数列表部分, 参数名 可以省略*/
int min(int x , int y);
int min2 (int ,int);
/*    函数的实现  (  定义 )   */
/*   函数的实现  ,其中参数列表部分 , 参数名必须有 */
int min(int x ,int y)
{
    return x < y ? x : y;
}
int   min2(int x , int y )
{
    return x < y ? x : y;
}
#pragma mark   - 知识点4   形参和实参
/*   注意 : 函数调用时, 形参会拷贝实参中的内容 . 单向传递 , 实参传给形参  */
//   详见" C05_2函数  "
/*   练习 :  写一个交换两个整型变量值的函数,详见"  C05_2函数"  */
#pragma mark   - 知识点5  函数的嵌套和调用
/*1，求两个数的最大值；*/
int Maxvalue1(int a ,int b)
{
    int max1 = INT16_MIN;
    max1 = a > b ? a : b;
    return max1;
}
/*2，求三个数的最大值；*/
/*3，求四个数的最大值；*/
/*4，求五个数的最大值；*/
#pragma mark  - 主函数
int main(int argc, const char * argv[]){


#pragma mark  - 知识点3  函数调用
/**  1. 调用系统函数printf()    */
    printf("调用系统函数:\n");
/**  2.调用自定义函数  */
    int count  = 0;
    printfHello();
    printfNumber(3, 5);
    numberTen();
    int a = numberTen();
    printf("a = %d \n", a);
    
    sum(3 ,5);
    printf(" sum = %d \n",sum(3, 5));
    printf("max = %d\n",maxnumber(7, 10));
    
    kSumNumber(7, 10);
    printf("sumValue = %d\n",sumValue(100));
    
    TempNumber(5, 7, 42);
    count  = CountNumber(1564);
    printf("%d\n", count  );
    
    down();
    
    return 0;
}
#pragma mark   - 主函数的下方
void  down( )
{
    printf("在主函数的下方!\n");
}




