//
//  main.m
//  C03 - 循环结构
//
//  Created by dllo on 15/11/19.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

#pragma mark -知识点1     for 循环
{
    
#if 0
        for (变量初始化;  条件表达式; 变量增量)
        {
            循环体语句；
        }
        流程：
        
        1.  变量初始化。
        2. 判断条件表达式。
        3.如果条件表达式为真，执行循环体语句。
        4.执行变量增量。
        5.再次判断条件表达式。
        6.如果此时条件表达式为假，则跳出 for  循环。
        
#endif
            }
#pragma mark    练习
{
        /**
         * 练习1: 打印5次"hello, lanou!"   */
        {
#if 0
            for (int i = 0 ; i < 5 ; i++)
            {
                printf(" hello  world ! \n");
            }
            
#endif
        }
        
        
        /*   正序打印1~5的数  */
        {
            
#if 0
            for (int i = 0; i < 5; i++)/*   先想好要循环多少次  直接敲出条件*/
            {
                printf("%d\n",i + 1);
                
            }
            /*    倒序打印 5 ~ 1的数*/
            for (int i = 5; i > 0 ; i--)
            {
                printf(" %d\n",i );
            }
#endif
        }
        
        
        /*    for 循环打印1~ 100 之间的偶数  */
        {
#if 0
            for (int i = 1; i <= 100; i++)
            {
                if (i % 2 == 0)
                {
                    printf("%d     ",i);
                }
            }
#endif
        }
        
        /**
         * 练习4:
         * 用for循环打印出1~100之间7的倍数。
         * 用for循环打印出1~100之间个位为7的数。
         * 用for循环打印出1~100之间十位为7的数。
         * 用for循环打印出1~100之间既不是7的倍数并且也不包含7的数。
         
         提示:
         如何获取一个数a的个位?   a  % 10
         如何获取一个数a的十位?   a   /  10
         */
        {
#if 0
            printf("7的倍数 ：\n");
            for (int i = 1 ; i <= 100; i++)
            {
                if (i % 7 == 0)
                {
                    printf(" %d   ",i );
                }
            }
            printf("\n个位数为7 ：\n");
            for (int a = 1; a <=100; a++)
            {
                if (a %10 == 7)
                {
                    printf(" %d   ", a);
                }
            }
            printf("\n十位数是7 :\n");
            for (int b =1; b <= 100; b++)
            {
                if (b / 10 == 7)
                {
                    printf("%d   ", b);
                }
            }
            printf("\n不是7的倍数，也不含7：\n");
            for (int c = 1; c <= 100;  c++)
            {
                if ( c % 7 != 0  && c / 10 != 7 && c % 10 != 7)
                {
                    printf("%d   ", c);
                }
            }
            
            
            
            
#endif
        }
        
        
     }
#pragma mark - 知识点2     break   ，continue 
{
    
/*   输入一个数， 判断这个数是否是质数         重点，理解BOOL类型   还有break continue 的用法  */
    {
#if 0
        int num = 0;
        BOOL  isZhi = NO ;
        printf("请输入一个数 : ");
        scanf("%d",&num);
        for (int i = 2; i < num ; i++)
        {
            if (num % i  !=  0)
            {
                isZhi = YES;
            }else
            {
                isZhi = NO;
            }
        }
            if (isZhi == YES)
            {
                 printf("这个数是质数！\n");
            }else
            {
            printf("这个数不是质数！\n");
            }
#endif
    }
    
    
    }
#pragma mark  -知识点3  随机数
{

/*
公式 ： arc4Random（） %  （ b - a + 1）+ a     表示从a到b范围内的随机数
arc4Random（）   返回一个无符号的随机数      
 */
/*     用for 打印10个随机数（10 ~ 30），求最大值和最小值   */
{
#if 0
        int a = 0;
        int max = 0;
        int min = 30;
        for (int i = 0; i < 10; i++)
        {
            
                       a = arc4random() % (30 - 10 + 1) + 10;
            printf("%d     ",a);
          /*   这个地方也可以用if语句确定最大最小值  用min 和随机数比较  ，把最小值赋给min,最大值同理*/
        max = max > a ? max : a;
        min = min < a ? min : a;
            
        }
        printf("\nmax = %d\n",max);
        printf("min = %d\n",min);
    
         /* 
          if (a > max )
            {
                max = a ;
            }
            if (a < min )
            {
                min = a;
            }
        }
        
            printf("\nmax = %d\n", max);
            printf("min = %d\n",min);         
          
          */
#endif
    }
    }
#pragma mark  循环嵌套练习
{
/*   练习1: 打印一行 1, 2, 3, 4, 5      */
        {
#if 0
        for (int i = 0; i < 5; i++)
        {
            printf("%d   ",i + 1);
        }
        printf("\n ");
        
#endif
        }
/*   练习2: 打印三行 1, 2, 3, 4, 5    */
        {
#if 0
        /*      确定行数： 为3 行   */
        for (int a =0; a < 3 ; a++ )
        /*   确定每行的内容   */
        {
        for (int i = 0; i < 5; i++)
        {
            printf("%d ", i + 1);
            
        }
            /*   每行结束之后 加一个 换行符   */
            printf("\n");
        }
#endif
        }
/*** 练习3: 打印如下图形：
         1
         1 2
         1 2 3
         1 2 3 4
         1 2 3 4 5
         第一个for 确定行数，第二个for 确定一行的内容。*/
        {
    #if 0
        for (int i = 0; i < 5; i++)
        {
            for (int j =0;  j < i + 1; j++)
            {
                printf("%d ", j + 1);
            }
            printf("\n");
        }
#endif
}
/*** 练习4: 打印如下图形：
         1 2 3 4 5
         1 2 3 4
         1 2 3
         1 2
         1
         */
        {
            #if 0
        for (int i = 0; i < 5 ; i++)
        {
            for (int j = 0;  j < 5 - i ;  j++)
            {
                printf("%d ", j + 1 );
            }
            printf("\n");
        }
#endif
        }
/*   九九乘法表       左对齐， 在%号后加 “- ”号    */
        {
    #if 0
        
        for (int i = 0; i < 9; i++)
        {
            for (int j = 0; j < i + 1; j++)
            {
                printf("%dx%d = %-2d  ",(j + 1) ,(i + 1),( i + 1) * (j + 1) );
            }
            printf("\n");
        }
#endif
        }
/*   打印三个数字（0 ~ 9）的组合可能（组合成三位数）。*/
        {
        #if 0
        for (int i = 1; i < 10;  i++)
        {
            for (int j = 0; j < 10 ; j++)
            {
                for (int z = 0; z < 10;z++)
                {
                    printf("%d ",i * 100 + j * 10 + z );
                }
            }
            
        }
#endif
        }
}
#pragma mark  -知识点4   while循环
{
#if 0
        while (条件表达式)
        {
            语句；
        }
        流程：
        1.判断条件表达式
        2.如果表达式结果为真，执行语句；
        3.再次判断条件表达式
        
        
#endif
    }
#pragma mark   练习
{
/*输出100 以内7 的 倍数
*明确知道循环次数多用 for 循环      不知道循环次数用while 循环  */
    {
#if 0
        int i = 1;
        while (i < 101)
        {
            if (i % 7 == 0) {
                printf("%d  ",i ) ;
            }
             i++;
            
        }
#endif
    }
/* 输出100以内 含 7 的数字 */
    {
#if 0
        int i = 1;
        while (i < 101)
        {
            if ( i % 10 == 7)
            {
                printf("%d  ", i);
            }
            i++;
        }
        printf("\n");
        int  j = 1;
        while (j < 101)
        {
            if (j / 10 ==7)
            {
                printf("%d ",j);
            }
            j++;
        }
        printf("\n");
#endif
    }
/*  执行一个循环体 输入0退出循环*/
    {
#if 0
        
        /* return 0 t跳出主函数，函数返回，即退出主函数， 程序结束   main ()     break  跳出循环 */
        int number = 0;
        while (1)
        {
            printf("请输入一个整数（输入0 退出程序）：");
            scanf("%d",&number);
            if (number ==0)
            {
                break;
            }
            printf("刚才输入的整数是 ：%d\n",number);
        
        }
#endif
    }
/*    输入一个整数，判断是否是质数，结果打印处理，当输入0时， 退出程序  */
    {
#if 0
        int number = 1;
        int i = 0;
        BOOL on = YES;
        while (1)
        {
            printf(" 请输入一个整数 (0退出循环):");
            scanf("%d",&number);
            if (number == 0)
            {
                return 0;
            }
            /*判断是否是质数*/
            else
            {
                for ( i = 2 ; i < number ; i++)
                {
                    if (number % i == 0)
                    {
                        on = NO;
                        break;              /*注 ：别丢了break  跳出for 循环，不跳出 while 循环*/
                    }
                    else
                    {
                        on = YES;
                    }
                }
                if (on == YES)
                {
                    printf(" 该数是质数！\n");
                }
                else
                {
                    printf(" 该数不是质数！\n");
                }
            }
        }
#endif
    }
}
#pragma mark  - 知识点5  do......while 循环
{
#if 0
    do
    {
        循环体语句；
    }
    while (条件表达式);
#endif
}
#pragma mark  练习
{
#if 0
        /*  输入一个整数， 求这个整数的位数  。*/
        int count = 0;
        int number2 = 0;
        printf("请输入一个数：");
        scanf("%d",&number2);
        do
        {
            count++;
        }
        while (number2 /= 10);
        printf(" 位数是:%d\n",count);
        
        
      
        
#endif
        
    }
    return 0;
}
