//
//  main.m
//  C06_2_结构体
//
//  Created by dllo on 15/11/24.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"        /*  导入头文件  */
int main(int argc, const char * argv[]) {
/* 定义Person结构体类型变量 */
    Person per1 = {"Zhang", 20, 'm', 1};
    Person per2 = {"LiSi", 31, 'f', 2 };
    Person per3 = {"Wang", 21,'m',3};
    hello();
    Information(per1);
    Information(per2);
    Person per4 = {};
    per4 = per3;
    Information(per2);
    printf("\n");
/* 定义一个数组  */
    Person arrPerson [ 3 ] = {per1, per2, per3};
/*  需求: 将数组中的元素按照年龄大小升序排序*/
    Person temp = {};
    for (int i = 0 ; i < 3 - 1; i ++ )
    {
        for (int j = 0; j < 3 - 1 - i; j++)
        {
            if (arrPerson [ j ].age > arrPerson [ j + 1].age)
            {
                temp = arrPerson [ j ];
                arrPerson [ j ] = arrPerson [ j + 1 ];
                arrPerson [ j + 1] = temp;
            }
        }
    }
    for (int i = 0; i < 3; i++) {
        Information(arrPerson [ i ]);
    }
    printf("\n");
/*  需求:将数组中元素按照姓名升序排序*/
    for (int i =0 ; i < 3 - 1; i++)
    {
        for (int j = 0; j < 3 - 1 - i ; j ++)
        {
            if (strcmp(arrPerson[ j ].name,arrPerson[ j + 1].name) > 0)
            {
                temp = arrPerson [ j ];
                arrPerson [ j ] = arrPerson [ j + 1 ];
                arrPerson [ j + 1] = temp;
            }
        }
    }
    
    for (int i = 0; i < 3; i++) {
        Information(arrPerson[ i ]);
    }
    
    return 0;
}
