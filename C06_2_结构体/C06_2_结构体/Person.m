//
//  Person.m
//  C06_2_结构体
//
//  Created by dllo on 15/11/24.
//  Copyright © 2015年 doll. All rights reserved.
//

#import "Person.h"
 /* 函数的实现部分 */
void hello ( )
{
    printf("hello !\n ");
}
void Information(Person per)
{
    printf("name = %s, age = %d, sex = %c, number = %d \n",per.name, per.age, per.sex,per.number);
}