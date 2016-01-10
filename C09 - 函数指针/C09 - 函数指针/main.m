//
//  main.m
//  C09 - 函数指针
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll. All rights reserved.
//
/*
typedef struct student
{
    char name [ 20 ];
    int age ;
    int score;
}Stu;
Stu Array={{"Zhangsan",18 , 95},{"Lisi", 20, 45 },{"WangWu", 19, 84},{"Lily",17, 91},{""}};
*/
#import <Foundation/Foundation.h>
#import "Student.h"
typedef int II;
typedef int (*FUN) (int ,int );


/* 函数 :参数含有函数指针*/
int getValue (int  ,int ,int (*p)(int , int ));
int getValue (int x ,int y ,int (*p)(int , int ))
{
   int value = p(x, y);
    return value;
}
/*函数: 返回两个整数的乘积 */
int mulValue(int x, int y)
{
    return x * y;
}


/*  声明一个求两个最大值的函数*/
int maxValue (int x , int y);
int maxValue (int x , int y)
{
    return x > y ? x : y;
}

/*函数 : 返回两个整数的和  */
int sumValue (int x, int y);
int sumValue (int x, int y)
{
    return x + y;
}
void printfHello()
{
    printf("Hello!\n");
}


/*  函数:排序(指针版本)   */
void sortArray(int  *P ,int count )
{
    int temp = 0;
    for (int i = 0; i < count - 1  ; i++) {
        for (int j = 0; j < count - 1 - i; j++) {
            if (*(P + j) > *(P + j + 1)) {
            temp = *( P + j);
            *(P + j ) = * ( P + j + 1);
            *(P + j + 1) = temp;
        }
    }
}
}
 /*  函数 : 排序(数组版本)  */
void sortArrV1(int arr[ ] ,int count)
{
    int temp = 0;
    for (int i = 0; i < count - 1; i++) {
        for (int j = 0 ; j < count - 1 -i; j++) {
            if (arr[ j ] > arr [ j + 1 ]) {
            temp = arr[ j ];
            arr [ j ] = arr [ j + 1 ];
            arr [ j + 1 ] = temp;
        }
    }
    }
}
/*函数: 数组输出 */
void printArr(int *arr, int count)
{
    for (int i = 0; i < count; i++)
    {
        printf("%d ",arr [ i ]);
    }
    printf("\n");
}

int main(int argc, const char * argv[]) {

#pragma mark  -知识点1 函数指针定义和使用
#if 0
/*  函数指针 : 指针指向函数(代码区)*/
    maxValue(20, 50);
    printf("max = %d\n",maxValue(20, 50));
    /*查看代码区, 查看maxValue 函数的内存地址*/
    printf("max add= %p\n",maxValue);
    printf("sum add= %p\n",sumValue);
    /*重点 : 如何确定函数指针类型 ! ! !*/
    /*技巧1 : 函数在声明部分,将函数名去掉就是函数指针类型 */
    /*技巧2 :  函数指针变量如何定义,   就是将函数声明部分, 将函数名替换成(*p), 其中的p是指针变量名*/
    int (*p)(int x, int y) = NULL;    /* 函数指针*/
    /*上面的语法说明 :
     指针类型:  int (*)(int x, int y)
     指针变量名: p
     指针变量值: NULL
     */
    int *p2 = NULL;     /*  int a = 100    整型指针*/
#endif
#if 0
    int (*arr) [ 5 ] = NULL;    /*    int  arr [ 5 ]  数组指针   */
    int * array [ 5 ] = {};   /*  指针数组  其中array是数组名, [ 5 ]数组元素个数, int * :  数组中存放的指针的指针类型*/
    int (*array2) [ 5 ] = NULL;   /*  数组指针, 其中array2是指针变量名, int * [ 5 ]是指针类型
                                       array2 + 1 ,访问下一个 20 字节的内容  直接访问一个数组的内容 */
    
#endif
#if 0
    /* 函数指针赋值 */
    int (*point)(int , int ) = NULL;
    point = maxValue;/*  将指针指向了maxValue函数的代码的首地址. 注意 : 指针类型和函数类型要一致(包括返回值和参数列表) */
    /*通过  函数指针  调用函数  */
    point (20, 50);
    printf("max =  %d\n",point(20, 50));
    point = sumValue;
    point(20, 50);
    printf("sum = %d\n",point(20, 50));
#endif
#pragma mark   练习

    /** (1). 定义可以指向系统strlen函数的指针 */
    #if 0
    size_t	 (*point3)(const char *) = strlen;
    printf("%ld\n",point3("iphone"));
char string [ ]  = "iphone";
    point3(string);
    printf("%ld\n",point3(string));
    /** (2). 定义一个指向系统strcpy函数的指针 */
    char	*(*point4)(char *, const char *) = strcpy;
    char string1 [ ] ="iOS";
    point4(string, string1);
    printf("%s\n",point4(string, string1));
    printf("%s\n",point4(string1,string));
    /** (3). 定义函数指针指向printHello函数. 并用函数指针调用函数 */
    void (*point2)() = NULL;/*定义一个函数指针变量*/
    point2 = printfHello;/*变量赋值*/
    point2();/* 通过函数指针调用函数 */
#endif
    /** (4). 定义函数指针调用排序函数 */
#if 0
   int array3 [ ] ={6, 9, 4, 8, 2};
   int * p1 = array3;
  int count = sizeof(array3) /sizeof(array3 [ 0 ]);
    void (*point5) (int  *P ,int count ) = NULL;
  
    point5 = sortArray;
    point5(p1,count);
    point5 = printArr;
    point5(p1,count);

    point5 = sortArrV1;
    point5(array3, count);
    point5 = printArr;
    point5 (array3,count);
#endif
    /** (5). 定义两个 函数 ,一个求 最大值,一个 求和,从控制台输入maxValue或sumValue分别求 3 , 5的最大值或和
     * (提示,定义一个 函数指针 ,根据输入内容指向不同函数,最后一次调用完成)。
     */
#if 0
    int (*p)(int ,int ) = NULL;
    printf("请输入maxValue或者sumValue求最大值或和: ");
    char string [ ] = "";
    scanf("%s",string);
    if (strcmp("maxValue" , string) == 0 ) {
        p = maxValue;
    }
   else if (strcmp("sumValue", string) == 0) {
        p = sumValue;
   }else
   {
       printf("输入错误,请重新输入");
   }
    if(p)
    printf("%d\n ",p(3, 5));
#endif
    
#pragma mark  -知识点2 函数回调 ( call back )
#if 0
    /*  本质 : 函数指针作为函数的参数*/
    /*求两个数最大值*/
    int max = getValue(3 , 5, maxValue);
    printf("max : %d\n",max);
    /*求两个数的和*/
    int sum = getValue(3, 5, sumValue);
    printf("sum :%d\n", sum);
    /*求两个数的乘积*/
    int mul = getValue(3,  5, mulValue);
    printf("mul :%d\n",mul);
#pragma mark   练习
    /*写一函数查找成绩90分以上的学员,使用调用函数在姓名后加上"高富帅"  
    使用同一个函数,让成绩60分以下的学员+5分*/
    
    Student  stu1 = {"zhang", 20, 89};
    Student  stu2 = {"li", 19, 91};
    Student  stu3 = {"wang", 21, 99};
    Student  stu4 = {"wu", 23, 79};
    Student  stu5 = {"bai", 24, 89};
    /* 定义一个结构体数组  */
    Student arrStu [ 5 ] = {stu1, stu2, stu3, stu4, stu5};
    /* 调用查找学生函数 */
    selectedStudents(arrStu, 5, changeName );
    /*调用 遍历输出学生信息*/
    info0fStudent(arrStu , 5);
    selectedStudents(arrStu, 5, changeScore);
    /*此时调用函数时,还是分数大于90分的学生分数+ 5分, 因为selectedStudents函数内的判断条件是固定即(stu.score > 90 ) 那么如何使判断条件是动态变化的呢? 这就是下面动态排序的原理,详见动态排序 */
    
#pragma mark  - 知识点3  动态排序
#pragma mark   练习
    /*实现冒泡函数,通过回调函数实现*/
    
    /*按照姓名升序排序*/
    sortArr(arrStu, 5, cmpname);
    info0fStudent(arrStu, 5);
    /* 按照分数升序排序 */
    sortArr(arrStu, 5, cmpScore);
    info0fStudent(arrStu, 5);
    /*按照年龄升序排序 */
    sortArr(arrStu, 5, cmpAge);
    info0fStudent(arrStu, 5);
    
#pragma mark   - 知识点4 函数指针类型重定义(typedef)
    FUN point  = maxValue;
    point (3, 5);
    printf("%d\n", point(3, 5));
    
#endif
#pragma mark   练习
/*对学生结构体数组按照姓名 ,年龄,成绩进行动态排序.使用函数指针类型重定义*/
    

    return 0;
}
