//
//  代码练习.h
//  代码练习
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct Student
{
    char name[ 20 ];
    int age;
    float score;
}Stu;

Stu ChangeName( Stu student);
Stu ChangeScore(Stu student);
void informationStudent (Stu student [ ], int count );
void selectedStudents(Stu student [ ], int count , Stu (*p)(Stu student));
void sortArray(Stu student [ ], int count , BOOL(*p)(Stu, Stu));
BOOL cmpname(Stu student1, Stu student2 );
BOOL cmpage(Stu student1,Stu student2);
BOOL cmpscore(Stu student1, Stu student2);