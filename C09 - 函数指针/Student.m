//
//  Student.m
//  C09 - 函数指针
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Student.h"
/*函数: 比较两个学生的年龄 (升序)*/
BOOL cmpAge (Student stu1,Student stu2)
{
    return stu1.age > stu2.age;
}


/*函数: 比较两个学生的分数(升序)*/
BOOL cmpScore (Student stu1,Student stu2)
{
    return stu1.score > stu2.score;
}


/*函数: 比较两个学生的姓名(升序)*/
BOOL cmpname(Student stu1,Student stu2)
{
    return strcmp(stu1.name, stu2.name) > 0 ? YES : NO;
}


/*函数 :  冒泡排序(动态)  */
void sortArr(Student arr[ ] , int count,BOOL(*p)(Student, Student))
{
    Student temp = {};
    for (int i = 0; i < count - 1; i ++) {
        for (int j =0; j < count - 1 - i; j++) {
            /* 重点就是判断条件 ,通过函数回调,函数的返回值作判断条件(即函数的返回值类型为BOOL) */
            if ( p(arr [ j ], arr [ j + 1])  ) {
                temp = arr [ j ];
                arr [ j ]= arr [ j + 1 ];
                arr [ j + 1 ] = temp ;
                
            }
        }
    }
}


Student changeScore(Student stu )
{
    stu.score += 5;
    return stu;
}

void info0fStudent(Student arr [ ] , int count)
{
    for (int i = 0; i < count; i++)
    {
        printf("name: %s, age: %d, score: %.2f\n", arr [ i ].name, arr [ i ].age, arr [ i ].score);
    }
}

Student changeName(Student stu)
{
    strcat(stu.name,"高富帅");
    return stu;
}

void selectedStudents(Student arr [ ], int count, Student (*p)(Student stu) )
{
               /*遍历数组*/
        for (int i = 0; i < count ; i++) {
        if (arr [ i ].score > 90) {
            arr [ i ] = p(arr [ i ]);
        }
    }
}