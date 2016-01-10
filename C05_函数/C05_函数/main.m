//
//  main.m
//  C05_函数
//
//  Created by dllo on 15/11/23.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyFunction.h"  /*   注意 ,自定义的用双引号"  " ,导入系统的用 尖括号<   >:*/
int main(int argc, const char * argv[]) {
/*  函数调用 */
/*注意: 需要导入相应的 .h 文件( 头文件 )*/
    max(3, 5);
    printf("max = %d\n",max(3, 5));
    
    int a = 400;
    int b = 200;
    int c = 300;
    int d = 1504;
    int f = 2000;
    printf(" a add : %p\n",&a);
    printf(" b add : %p\n",&b);
    addofArg(a, b);  /*  交换两个变量的值*/
/*   如果函数的参数直接是变量名 , 无法实现交换 ,如果 想交换,详见" C指针章节 "*/
    Temp(a, b);
    printf(" a = %d  b = %d\n",a , b );
    /*求两个数中的最大值*/
    printf( "%d\n",Maxvalue1(a, b));
    /*求三个数中的最大值 */
    printf("%d \n",Maxvalue2(a, b, c));
    /*求四个数中的最大值*/
    printf("%d\n",Maxvalue3(a, b, c, d));
    printf("%d\n",Maxvalue4(a , b, c, d, f));
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
