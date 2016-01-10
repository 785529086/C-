//
//  代码练习.m
//  代码练习
//
//  Created by dllo on 15/11/27.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "代码练习.h"
/*写一函数查找成绩90分以上的学员,使用调用函数在姓名后加上"高富帅"
 使用同一个函数,让成绩60分以下的学员+5分*/
Stu ChangeName(Stu student)
{
    strcat(student.name ,"高富帅" );
    return student;
}

Stu ChangeScore(Stu student)
{
    student.score += 5;
    return student;
}

void selectedStudents(Stu student [ ], int count , Stu (*p)(Stu student))
{
    for(int i = 0; i < count ;i++ )
    { if (student [ i ].score > 90)
    {
        student [ i ] = p(student [ i ]);
    }
   }
}

void informationStudent (Stu student[ ], int count )
{
    for (int i = 0; i < count ; i++)
    {
        printf("name : %s, age : %d, score :%.2f\n",student[ i ].name, student[ i ].age, student[ i ].score );
    }
}
void sortArray(Stu student [ ], int count , BOOL(*p)(Stu, Stu))
{
    Stu temp = {};
    for (int i = 0; i < count - 1; i ++ ) {
        for (int j = 0 ; j < count - 1 - i; j++) {
            if (p(student [ j ],student [ j + 1])) {
                temp = student [ j ];
                student [ j ] = student [ j + 1 ];
                student [ j + 1 ] = temp;
            }
        }
    }
}
BOOL cmpname(Stu student1, Stu student2 )
{
    return strcmp(student1.name, student2.name) > 0 ? YES : NO;
}
BOOL cmpage(Stu student1,Stu student2)
{
    return student1.age > student2.age;
}
BOOL cmpscore(Stu student1, Stu student2)
{
    return student1.score > student2.score;
}



