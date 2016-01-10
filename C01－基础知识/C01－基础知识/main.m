//
//  main.m
//  C01－基础知识
//
//  Created by dllo on 15/11/17.
//  Copyright © 2015年 doll. All rights reserved.
// /** 导入Foundation框架  */
//栈区 堆区 静态（全局区）常量区 代码区

#import <Foundation/Foundation.h>

 /**
  *主函数，一个程序只有一个主函数（main）,程序都是从 main函数进入。
  ＊@param argc 参数的个数
  ＊@param argv[] 参数的值（数组）
  ＊return int 整型
  */
int main(int argc, const char * argv[]) {
#pragma mark -知识点1 进制
    {
    /** 进制转换 （二进制 <-> 十进制）*/
    /** 110010 2^5+2^4+2 = 40 */
    /** (十进制 <-> 二进制) 连除倒取余法 */
    /** 1个十六进制位等于4个二进制位
        1个八进制等于3个二进制位 */
    }
#pragma mark -知识点2 基本类型
    {
    #if 0
/* 几种基本数据类型 *／
 /*char类型，占一个字节 */
   char c = 'a';
    printf("c size :%ld\n",sizeof(char));
    /** int类型（整型），占4个字节 */
    int  a2 = 100;
    /** float 类型（浮点类型）， 占4个字节 */
    float f = 3.14;
    /** double 类型 （双精度类型） */
   double d =3.1415;
    /** 短整型 */
    short s = 200;
    /** 长整型 */
  long l = 500;
#endif
#if 0 
    /* 栈区内存如何分配 */
    /*栈区，从高到低分配内存
     *栈区内存由系统来管理(开辟和回收)
     *栈的空间总共才8M
     */

    
/** 定义一个整型变量a,同时赋值（100）*/
    
    int a ;
    a = 100;
    /** 输出a  */
    printf ("a:%d\n", a);
    int b;
    b = 200;
    printf("b:%d\n", b );
    printf("over!\n");
#endif
    
#if 0 /**变量和常量*/
    /** 变量的命名规范
     *只能有数字，字母，_(下划线)，$组成，不能以数字开头。
     *不能和系统保留字重复，如int if 等
     *驼峰命名法。当多个单词组成时，后面的单词首字母大写，如：withName
     */
#endif
    
#if 0 /** 练习：交换两个int 型变量的值   限时30秒*/
    int number1 = 100;
    int number2 = 200;
    int temp = 0;
    printf("number1=%d\nnumber2=%d\n", number1,number2);
    temp = number1;
    number1 = number2;
    number2 = temp ;
    printf("number1 = %d\nnumber2 = %d\n", number1,number2);
#endif
    
#if 0
    /** char类型本质是一种整型，特殊的整型*/
char c =  'a';
   printf("c:%c\n",c);
  printf("c:%d\n",c);
#endif
    }
#pragma mark - 知识点3 运算符
    {
#if 0
    /**   ' ='  赋值运算符
     *练习： int a = 1234;将a各个位置的数都取出来
     *b = a / 0;    注：除数不能为0
     */
    int a = 100;
    int b = 12;
    printf("a+b=:%d\n", a + b);
    printf("a-b=:%d\n", a - b);
    printf("a*b=:%d\n", a * b);
    printf("a除以b = %d\n ", a / b );
    printf("a对b取余 = %d\n",a % b);
    /** ++,  -- ,自增，自减*/
    int c = 0 , d =  0;
    c = a ++;
    printf("c = %d , a = %d \n", c , a );
    
    d = ++a;
    printf("d = %d , a = %d \n",d , a);
    /** 复合运算符  :   +=  ,  -=  ，*=  ，  /=  ,  %=  */
    printf("a = %d \n", a += b  );
#endif
    }
#pragma mark - 知识点4 格式化输出
    {
#if 0
    /**
     *printf("const  char  * restrict,......")是函数，我们通过函数实现输出
     *ctrl+b光标前移， ctrl +f光标后移
     *%d 占位符（给后面变量占个位置）
     */
    int c = 30
    ;
    printf("printf 函数表示双引号之间的内容\n");
    printf("\\  \n");
    printf("%%  \n");
    printf("c :%4d\n",  c);
    /**4的含义是占4位，如果不够4位，默认空格补齐*/
    printf("c:%04d\n", c);
    /**04的含义占4位，如果位数不够，用0 补齐*/
    printf("c:%-4d\n",c );
    /** 输出数据在域内左对齐，默认为右对齐*/
    
    
    float f = 3.1415926;
    printf("f:%f\n", f );
    printf("f:%.2f\n",f );
    float number1 =  1;
    float number2 = 2;
    printf("number1/number2:%.2f\n",number1/number2);
    /**保留到小数点后两位*/
    printf("number1/number2:%g\n",number1/number2);
    /** %g,  自动保留小数点位数*/
#endif
    }
#pragma mark - 知识点5  格式化输入
    {
#if 0
    int a = 0;
    printf("a的内存地址位：%p\n", &a );
    printf("请输入整数：\n");
    scanf("%d",&a  );
    /**   &符号，取址（取出内存地址）*/
    printf("a = %d\n",a );
#endif
    
#if 0
    /**连续输入*/
    int a = 0;
    int b = 0;
    printf("请输入两个整数：");
    scanf("%d-%d",&a ,&b);
      /*   注意;格式化输入，要和“”之间定义的格式一样输入   */
    scanf("%d",&a );
  /*      注意：scanf后面不能有/n       */
    printf("a = %d ,b = %d\n ",a,b);
    
    
 

#endif

#if 0
    int a = 0;
    int b = 0;
    int sum = 0;
    printf("请输入两个整数：\n");
    scanf("%d%d",&a ,&b);
    sum = a + b;
    printf("sum = %d\n",sum);
    
    
    
#endif
#if 0
    int  a = 1;
    int  b = 3;
    int  c = 0;
    printf("a的值：%d b的值：%d \n",a ,b );
    c = a ;
    a = b ;
    b = c ;
    printf("a的值：%d b的值"":%d\n",a,b);
    
    
#endif
#if 0
    int a =1;
    int  b = 3;
    int c =  0;
    c = a;
    a = b;
    b= c;
    printf("a:%d b:%d\n",a,b);
    
    
#endif
#if 0
    int a = 1 ;
    int b = 2 ;
    a = b - a;
    b = b - a;
    a = b + a ;
    printf("a = %d b = %d\n",a , b);
    /**互换a、 b空间的内容*/
    
#endif
    }
    return 0;
}
