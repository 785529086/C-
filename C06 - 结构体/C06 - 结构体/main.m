//
//  main.m
//  C06 - 结构体
//
//  Created by dllo on 15/11/24.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

/* typedef 将结构体类型重定义 */
/*  typedef 第二种写法 */
struct ClassRoom
{
    float area;
    int floor;
};
typedef struct  ClassRoom ClassRoom;  /*  结构体嵌套  */

/* typedef  第二种写法 */
typedef struct Computer
{
    float cpu;
    char  color [ 20 ];
}Computer;  /* 此处的Computer 为新的类型名 */

/*  第一种结构体定义变量写法     通常使用这种方法定义结构体 */
struct Teacher
{
    char name [ 20 ];
    int age;
    float weight;
    ClassRoom  ClassRoom;
};
typedef struct Teacher Teacher;

/* 第二种结构体变量的写法 */
struct Driver
{
    char name [ 20 ];
    char sex;
} dri1, dri2;  /*此处的dri1 是一个变量   dri 是变量(两个变量) */
typedef struct Driver Driver;

/*第三种结构体变量的写法   , 此写法称为匿名结构体   匿名不能用typedef 重命名*/
struct
{
    char name [ 20 ];
    int age ;
}englishTeacher; /*  englishTeacher 为变量名    变量名被定义了之后就不能在main中增加了,赋值时分别给结构体内元素赋值 */


/* 含数组的结构体 */
typedef  struct ArrayStruct
{
    int array [ 20 ] ;
} ArrayStruct;

int main(int argc, const char * argv[]) {

#pragma mark - 知识点1  结构体定义
    {
#if 1
    /*  定义 开辟空间  声明  不开辟空间*/
    /* 结构体语法  */
    /*   struct 结构体名   
          {   
    类型 成员名;
    类型 成员名;
          .......
          };
     */
    /*  定义一个结构体 */
    struct  Student {
        char name [ 20 ];/*  姓名*/
        int age ;  /* 年龄*/
        int number; /*  学号*/
        float weight; /*  体重  */
    };
        typedef struct Student Student ;
    /*  定义一个结构体变量  说明: 其中struct Student 相当于 int  ,    stu1 相当于 a */
    struct  Student stu1 = {"Tom", 19, 1, 56.3};
    struct Student stu2 = {"Lily",20, 2, 57.8};
    struct Student stu3 =  {"Job", 18, 3, 59};
    /*  通常, 结构体在函数的外边定义,详见main函数上边代码部分  作用域的问题  */
    
    struct Teacher tea1 = {"Lili", 28, 50};
    /*dri1 = {"Tom", 'm'};*//*  注意, 结构体变量不能这样整体赋值,只能成员变量单独赋值 */
    /*  dri1.name = "Tom"; */  /* 注意 , 成员变量如果是字符串,不能直接赋值,需要通过strcpy 字符串拷贝函数*/
    strcpy(dri1.name, "Tom");
    dri1.sex = 'm';
    struct Driver dri3 = {"may", 'f'};
    strcpy (englishTeacher.name,"NiuNiu");
    englishTeacher.age = 16;
#endif
}
#pragma mark  - 知识点2  用typedef 定义结构体类型
    /*  typedef 的目的 :  为了简化类型  例如 :  struct Teacher  简化为 Teacher  ,   int  array [ ]   简化为Array ,typedef 适用于任何类型
     即可以将任何类型重定义   详见 main 函数上边代码部分 */
    ClassRoom class1 = {100, 3};
    Computer pc1 = {1.5, "white"};
#pragma mark  - 知识点3  结构体变量赋值
    Teacher  tea1= {"Wang", 30, 69};
    Teacher tea2 = tea1;/*    结构体变量可以直接赋值  */
    printf("name = %s\n",tea2.name);
    printf("age = %d\n",tea2.age);
    printf("weigh = %.2f\n",tea2.weight);
 /* 数组变量不能直接赋值 */
    int array [ 5 ] = {2, 3, 5 ,1,4};
    int array2 [ 5 ] = {} ;
//    array2 = array;  数组变量不能直接赋值  小技巧:  把数组作为结构体的一个成员,通过结构体变量直接赋值,实现数组变量的赋值.

    ArrayStruct struct1 = {{1, 2, 4, 5}};
    ArrayStruct struct2 = struct1;
    for (int i = 0; i < 4 ; i++)
    {
        printf("%d ",struct2.array[ i ]);
    }
    printf("\n");
#pragma mark- 知识点4 结构体内存的占用
    Teacher tea3 = {"Lili", 20, 50};
    printf("size :%lu\n",sizeof(tea3));
#pragma mark - 知识点5 结构体嵌套
 /*  详见main函数上面的结构体定义部分 */
#pragma mark - 知识点6 结构体数组
/* 结构体数组,就是数组中的数组元素类型都为结构体类型
     注意: 一个数组中的结构体类型要相同 */
    Driver driver1 = { " Tom", 'm'};
    Driver driver2 = {"Tom2", 'm'};
    Computer computer1 = {3.5, "wite"};
    Computer computer2 = {3.2, "gray"};
/* 定义一个结构体数组 */
//    Driver arrDriver [ 5 ] = {driver1,driver2,computer1  };   显示类型识别错误  结构体数组中的结构体类型必须相同
    
    return 0;
}
