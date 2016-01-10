//
//  main.m
//  C07- 指针
//
//  Created by dllo on 15/11/25.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "C07_指针Funcation.h"

int main(int argc, const char * argv[]) {
#pragma mark - 知识点1 C 语言指针的概念
 /*  指针就是内存地址   ,通过指针同样可以访问内存中的内容 */
#pragma mark - 知识点2 指针变量的定义和使用
#if 0
/* 定义一个指针变量  */
/*  指针变量  p,  整型表示将访问一个地址之上4个字节的内容存储空间  long 长整型表示就将访问首地址之上8个字节的内容存储空间  NULL 的含义是 ,将p 指向了0x0地址(空指针)*/
    int *p = NULL;
    long *p2 = NULL;
/*  指针变量 p 本身也需要在内存中保存  指针变量占用的内存字节数,取决于系统, 64 位系统占8个字节 32位系统 占4个字节*/
#endif
#pragma mark   - 知识点3  指针的算术运算(& 运算符和 * 运算符)
#if 0
    /*  &的使用  作用: 取出内存地址(取址符)*/
    int a = 100;
    int *p3 = NULL;   /*   定义一个指针,指向空 */
    p = &a;/*  将指针p 指向 变量a 的内存地址 */
    printf("p : %p\n",p);  /*  输出a 的地址      %p 地址占位符*/
    printf("a : %p\n",&a);
    /*  " * "  符号 : 取出 指针指向的内存地址中的内容( 取值符 )*/
    *p = 201;
    printf("%d\n", *p);
    int b = 200;
    short *ps = &b;  /* 错误,类型不匹配,但是输出了正确的结果是因为 2个字节的内容刚好能存下200 这个数*/
    printf("%hd\n", *ps);
    int c = 300;
//    *&c;
    int *p4 = NULL;
    p4 = &c ;
    p4++;
    printf("p4 : %p\n ", p4 );
    printf("p4++ : %p\n",++p4);
#endif
#if 0
/*  1. 交换两个整型变量的值用指针实现*/
    int  a = 100;
    int b = 200;
    int temp = 0;
    int *p = &a;
    int *p1 = &b;
    temp = *p;
    *p = *p1;
    *p1 = temp;
    printf("a = %d , b =%d\n",a, b);
/*2.  用函数实现练习1,即交换两个int 类型的变量值 */
    exchangeTwoNumber(&a, &b);
    printf("a = %d, b =%d\n",a,b);
#endif
#pragma mark - 知识点4  指针和数组的关系
#if 0
    int array [ 5 ] = {1, 3, 5, 7, 9};
    int *p = NULL;  /*  p + 1, 访问后4个字节的内容*/
    int (*p2) [ 5 ] = NULL;   /*  p2 + 1, 访问后20个字节内容, 相当于一个数组的长度 */
    p = array;
    p2 = &array;
    printf(" p: %p\n",p);
    printf("arr: %p\n",array);/*  数组名*/
    printf("arr:%p\n",&array);/*  数组的首地址   每次访问的长度为一个数组的长度 */
    printf("arr: %p\n",&array [ 0 ]);/*  第一个元素的首地址 */
    /*  结论: 数组名即是数组的首地址,也是第一个元素的首地址 ! ! !*/
#endif
#if 0
    /*  通过指针, 遍历数组 */
    int array [ 5 ] = {2, 4, 6, 8, 9};
    int *p = array;
    for (int i = 0; i < 5 ; i ++) {
        printf("%d ",*(p + i));
    }
    printf("\n");
    p = array;
    for (int i = 0;  i < 5 ; i++) {
    printf("%d ",*(p++));
    }
    printf("\n");
    p = array;
    for (int i = 0 ; i < 5 ; i++ ) {
        printf("%d ", *p++);
    }
    printf("\n");
    /* 扩展内容  */
    int * point [ 5 ] ;  /*  指针数组  :     数组名 point [ 5 ]   一个数组里头有5个指针  占40个字节  类型为 "int * "  */
    printf("%ld\n",sizeof(point));  /*输出40 个字节*/
    int (*point2) [ 5 ];  /* 数组指针     :  指针变量名 point2   定义了一个指向这个数组的指针 */
    printf("%ld\n",sizeof(point2)); /*输出 8个字节*/
#endif
    
/*  指针版冒泡排序 :  方法一  */
    {
#if 0
        int *p = NULL;
        int temp = 0;
        int array[ 5 ] = {4, 6, 9, 3, 1};
        p = array;
        for (int i = 0; i < 5 - 1 ; i++) {
            /* for (int j = 0; j < 5 - 1 - i; j++) {
             if (array [ j ] > array [ j + 1 ]) {
             temp = array [ j ];
             array [ j ] = array [ j + 1 ];
             array [ j +1 ] =  temp;
             }*/
            for (int j = 0; j < 5 - 1 - i; j++) {
                if ( *p > *(p + 1) )
                {
                    temp = *p;
                    *p = *(p + 1);
                    *( p + 1) = temp;
                    p++;
                }else
                {
                    p++;
                }
            }
            p = array;
        }
        for (int i =0;  i < 5 ; i ++) {
            printf("%d   ",array [ i ]);
        }
        printf("\n");
#endif
}
/*  指针版冒泡排序 :  方法二  */
#if 0
    {
        int array [ 5 ] = {3,  9, 5, 7, 2};
        int temp =0;
        int *p = array;
        for (int i = 0 ; i < 5 - 1 ; i++) {
            for (int j = 0 ; j < 5 - 1 - i;  j ++ )
            {
                if (*(p + j) > *(p + j + 1))
                {
                    temp = *(p + j );
                    *(p + j ) = *(p + j + 1);
                    *(p + j + 1) =  temp;
                }
            }
        }
    for (int i = 0; i < 5; i++) {
        printf("%d ",array [ i ]);
    }
    }
#endif
/*  指针作为函数的参数  */
/*  使用函数实现冒泡排序  */
    {
#if 1
        int array [ 5 ] = {2, 5, 9, 1,4};
        int *p = array;
    sortArr( p ,5);
    sortArr(array, 5);
#endif
    }
#pragma mark - 知识点5 指针和字符串的关系
    
//    printf(<#const char *restrict, ...#>)
//    strcmp(<#const char *#>, <#const char *#>)(<#char *#>, <#const char *#>)
//    strcpy(<#char *#>, <#const char *#>)
    /*  const  修饰词的作用  */
    int a = 100;
    a = 101;
    const int b = 200;
    printf("%d",b);
//      b = 201;      经过const 修饰的变量 不能修改, 起到保护作用
/*使用指针输出字符串(while)*/
    char string [ ] = "iphone";
    char *p = string;    /*指针指向字符串首地址 */
    int i = 0;
    while (*(p + i) != '0' )
    {
        printf("%c ",*( p + i));
        i++;
    }
    while (*p ) {
          printf("%c ",*( p++));
    }
/*使用指针输出字符串(for)*/
    for (int i = 0; i < strlen(string) ; i++) {
        printf("%c\n",*( p + i));
    }
/*  通过指针计算字符串的长度 */
    int count = 0;
    while (*p) {
        count ++;
        p++;
    }
    printf("count : %d",count );

    return 0;
}
