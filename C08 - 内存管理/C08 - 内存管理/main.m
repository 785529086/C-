//
//  main.m
//  C08 - 内存管理
//
//  Created by dllo on 15/11/26.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
/*  定义两个全局变量 */
int global1 = 100;
int global2 = 200;

void fun(int x , int y)
{
    char string [ ] =  "iphone";
    /*  输出参数地址, 和函数内变量的地址  */
    printf("x : %p\n",&x);
    printf("y : %p\n", &y);
    printf("string : %p\n",string);
}
void fun2();
int main(int argc, const char * argv[])
{
#pragma mark - 知识点1 存储区划分
#pragma mark 栈区
    int a = 100;
    int b = 200;
    printf("栈区地址如下:\n");
    printf("a : %p\n",&a);
    printf("b : %p\n",&b);
    /*  结论:   栈区是从高向低分配内存*/
    /*  查看函数参数内存分配问题   */
    fun(a, b);
    /*  注意 : 当调用函数时, 函数的形参先进栈区, 然后是是函数内的变量进栈区,函数调用之后(即执行完函数), 出栈的顺序和进栈的顺序相反, 即先释放函数内变量内存, 再释放形参内存*/
    
#pragma mark  堆区
    int *a2 = malloc(4);
    int *b2 = malloc(4);
    printf("堆区地址如下:\n");
    printf("a2 : %p\n",a2);
    printf("b2 : %p\n",b2);
    free(a2);/*  内存释放*/
    free(b2);/* 内存释放*/
    /*  结论 : 堆内存是从低到高分配, 堆内存更多内容详见下面知识点2*/
    
#pragma mark 全局(静态)区
    printf("全局区地址如下 :\n");
    printf("global1 : %p\n",&global1);
    printf("global2 : %p\n",&global2);
    /*  定义两个静态变量  */
    static int s1 = 100;
    static int s2 = 200;
    printf("静态区地址如下 :\n");
    printf("s1 :%p\n",&s1);
    printf("s2 :%p\n",&s2);
    /*  结论 : 全局(静态)区 ,内存分配从低指向高 */
    
#pragma mark 常量区
    char *string = "iphone";
    char *string2 = "iOS";
    printf("常量区地址如下 :\n");
    printf("string :%p\n","iphone");
    printf("string : %p\n",string);
    printf("string2 : %p\n",string2);
    
    printf("iphone\n");
    printf(string);
    /*  常量不能更改  */
#if 0
    char *str = "iphone";
    printf("\n%c\n",*(str + 1));/*   通过指针可以任意读取常量值 */
//    *(str +1) = 'P';  /* 但是常量值不能更改, 报错 指针访问错误   */
#endif
#if 0
    /* 容易混淆的地方 */
    char *str1 = "iphone";  /*定义一个指针, 指向了常量区地址 */
    char str2 [ ] = "iphone";/*  定义了一个数组, 将常量区内容复制到栈区*/
    str2 [1] = 'P';
#endif
    /* 地址模糊不清的地方 */
#if 0
 char *str = "iphone";
    printf("address1 : %p\n",str);    /**是指针指向的内存地址*/
    printf("address2 : %p\n",&str);   /*指针变量本身在栈区的地址 */
#endif
#pragma mark 代码区
    /*函数代码他通常在代码区*/
    printf("代码区地址如下 : \n");
    printf("fun : %p\n",fun);
    printf("main :%p\n",main);
    printf("fun2 :%p\n",fun2);
    /* 结论 : 代码区从低向高分配 */
#pragma mark - 知识点2 堆内存分配函数
#if 0
/*  通过函数malloc 在堆区开辟内存空间*/
    int *p = malloc(8);
    *p = 100;/*前4个字节赋值 */
    *(p + 1) = 200; /* 后4个字节赋值 */
    printf("%d \n",*p);/*访问前4个字节的内容*/
    printf("%d\n",*(p + 1));
    printf("%d\n",*(p + 2));/*访问正常开辟的8个字节的以外内容, 但是不报错 . 注意: 不能这样写 */
/*通过 free 函数释放内存 */
    free(p);
    printf("*p : %d\n",*p);/*  此时发现,值还是之前的100,结论 : free 函数不清空内存 */
    printf("*(p + 1 ) : %d\n",*(p + 1));
    /* 针对free 函数不清空内存问题, 为了不引起类似指针问题, 通常将指针指向空 */
    p = NULL;
    /* 练习: 动态内存, 开辟一个存放5个整数的数组,同时数组元素赋值*/
    int * point = malloc(5* sizeof(int));
    *point  = 5;
    *(point + 1) = 46;
    *(point + 2) = 7;
    *(point + 3) = 41;
    *(point + 4) = 50;
    for (int i = 0 ; i < 5; i++) {
        printf("%d ",*(point + i ));
    }
    printf("\n");
    /*对数组进行排序(冒泡排序) */
    int  temp = 0;
    for (int i = 0; i < 5 - 1 ; i ++) {
        for (int j = 0; j < 5 - 1 - i ; j++) {
            if (*(point + j) > *(point + j + 1)) {
                temp = *(point + j);
                *(point + j ) = *(point + j + 1);
                *(point + j + 1) = temp;
            }
        }
    }
    for (int i = 0; i < 5; i++) {
        printf("%d ",*(point +i));
    }
    free(point);
    point = NULL;
    int number;
    printf("\n请输入五个数:");
    for (int i = 0; i < 5; i ++) {
         scanf("%d",&number);
        *(point + i) = number;
    }
    for (int i = 0 ; i < 5; i++) {
        printf("%d ",*(point + i ));
    }
    printf("\n");
    free(point);
#endif
#if 0
    /*有一已知字符串，其中包含 数字 字符，提取其中的 数字字符 ，要求动态分配内存保存。
     提示: 先计算出有几个数字字符，然后根据数字字符的个数在堆区开辟空间。*/
    char str1[ ] = "ems4n23nejf23mm4k";
    int i = 0;
    char *p =str1;
    int count = 0;
    while (*(p + i) != '\0') {
        if (*(p + i) < '9' && *(p + i) > '0') {
            count++;
        }
        i++;
    }
    printf("count = %d\n",count);
    /*  堆区开辟空间  */
      i = 0;
    int j = 0;
    char *p1= malloc(6*sizeof(char));
    while (*(p + i) != '\0') {
        if (*(p + i) <= '9' && *(p + i) >= '0')
        {
            *(p1+ j) = *( p + i );
            printf("%c",*(p1 + j));
            j++;
        }
        i ++;
    }
    printf("\n");
  
    printf("%s\n",p1);
#endif
#if 0
    /*输入3个单词，动态分配内存保存单词，并在最后输出。
     提示:定义一个指针数组 char * words[3] = {0}； 保存堆区空间的地址，堆区空间存储数据。*/
    char * words[ 3 ] = {0};
    char temp [ 50 ] = {};
      for (int i = 0 ; i < 3; i++){
    printf("请输入3个单词:");
    scanf("%s",temp);
    /*堆区开辟空间 */
    char *str = malloc(strlen(temp) + 1);
    strcpy(str, temp);  /*  将temp 字符串拷贝到str字符串中*/
    words[ i ] = str;   /*将堆内存指针存入指针数组中*/
    }
    /*遍历指针数组,输出每个单词*/
    for (int i = 0; i < 3; i++) {
        printf("%s\n",words [ i ]);
    }
    /*堆内存释放 */
    for (int i =0; i < 3; i++) {
        free(words [ i ]);
        words [ i ] = NULL;
    }
#endif
#pragma mark - 知识点3 其它内存分配函数
       /*  calloc 函数, 分配内存, 并且清零 */
    char *p = calloc(4, 5);/*注意:是4个  5字节 的空间*/
    free(p);
    /*realloc 函数,对之前分配的内存空间, 重新调整新的大小 */
    char *p2 = malloc(10);
    char *newp = realloc(p2, 30);
    
    free(newp);/*  注意:   之前的p2是否要释放呢? 详见 Dash(API)   */
    return 0;
}
void fun2( )
{
    printf("fun2:");
}