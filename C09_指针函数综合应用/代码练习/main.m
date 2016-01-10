//
//  main.m
//  代码练习
//
//  Created by dllo on 15/11/21.
//  Copyright © 2015年 doll. All rights reserved.
//
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#import <Foundation/Foundation.h>
#import "代码练习.h"
#define N 256


int  main( )
{
/*写一函数查找成绩90分以上的学员,使用调用函数在姓名后加上"高富帅"
     使用同一个函数,让成绩60分以下的学员+5分*/
    Stu Student [ 5 ] = {
        {"Zhangsan", 20, 94},
        {"Xiaoping",21, 84},
        {"Lily", 22, 96},
        {"WangLe",23, 86},
        {"Job", 24, 76}};
    Stu (*p)(Stu student) = NULL;
    p = ChangeName;
    selectedStudents(Student, 5 , p);
    informationStudent (Student,5);
    printf("=======================\n");
    p = ChangeScore;
    selectedStudents(Student, 5 , p);
    informationStudent (Student,5);
        printf("=====================\n");
    BOOL(*p1)(Stu, Stu) = NULL;
    p1 = cmpage;
    sortArray(Student, 5, p1);
    informationStudent(Student, 5);
    printf("=====================\n");
    p1 =cmpscore;
    sortArray(Student, 5, p1);
    informationStudent(Student, 5);
    printf("=====================\n");
    p1 = cmpname;
    sortArray(Student, 5, p1);
    informationStudent(Student, 5);
        printf("=====================\n");
    
    
    
    return  0;
}
