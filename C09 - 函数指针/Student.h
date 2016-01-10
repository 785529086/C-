//
//  Student.h
//  C09 - 函数指针
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>

/*声明结构体*/
typedef struct Student
{
    char name [ 20 ];
    int age ;
    float score;
}Student;
/*声明函数*/
/*函数: 比较两个学生的年龄 (升序)*/
BOOL cmpAge (Student stu1,Student stu2);
/*函数: 比较两个学生的分数(升序)*/
BOOL cmpScore (Student stu1,Student stu2);
/*函数: 比较两个学生的姓名(升序)*/
BOOL cmpname(Student stu1,Student stu2);
/*函数 :  冒泡排序(动态)  */
void sortArr(Student arr[ ] , int count,BOOL(*p)(Student, Student));

/*函数: 分数+5分函数   */
Student changeScore(Student stu );


/*函数: 遍历输出学生信息*/
void info0fStudent(Student arr [ ] , int count);

/* 函数: 拼接学生姓名的函数 */
Student changeName(Student stu);

/*  函数:  查找学生函数*/
void selectedStudents(Student arr [ ], int count, Student (*p)(Student stu) );