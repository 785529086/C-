//
//  main.m
//  C02 - BOOL类型-关系运算符-逻辑运算符-if switch-枚举
//
//  Created by dllo on 15/11/18.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
enum  phoneNumber {caiwu, jishu, renshi, bangongshi };

int main(int argc, const char * argv[]) {
    
#pragma mark   - 知识点1   BOOL  数据类型
    {
#if 0
        BOOL   result = 100;
        bool   result2 = 100;
        _Bool result3 = 100;
        /**
         *BOOL  是OC中的类型， bool， _Bool是C中的类型。
         *BOOL  的数值可以是除了0 和1其他值
         *bool ，_Bool无论赋什么值，结果只有0和1 
         */
        BOOL  isOn = YES;
        printf("isOn = %d\n",isOn );
        BOOL  isOff = NO;
         printf("isOff = %d\n",isOff );
        BOOL  isOpen = 5 ;
        printf("isOpen = %d\n", isOpen);
 #endif
    }
#pragma mark   -知识点2  关系运算符
    {
/** > ,  < , >= , <=, == ,  !=         注意 ：“== ” 是判断是否相等    “ ！=”  判断不相等   “ ！” 取反  */
}
#pragma  mark    ** 课堂练习
    {
#if 0
        int i = 3, j = 4, k = 5;
        BOOL  result = i < j < k;
        printf("result = %d\n", result);
#endif
}
#pragma mark   -知识点3  逻辑运算符
    {
    /**
     *    &&  ,||, !
     *  && 逻辑与， 两边表达式都为真，整个表达式才为真。
     *  ||   逻辑或，两边表达式都为假，整个表达式才为假
     * 注意：短路问题 ，详见练习。
     *
     */
    }
#pragma mark    **课堂练习
    {
#if 0
        /**
         * 练习1:
         * 3>5 && 4<6  整个表达式结果?
         * 3<5 && 4<6  整个表达式结果?
         * 3==5 || 3<5 表达式的结果?
         * !0 结果?
         * !-1 结果?
         */
        BOOL  result1 = 3 > 5 && 4 < 6 ;/**   里面有短路问题 */
        printf("result1 = %d\n",result1);
        BOOL result2 = 3 == 5 || 3 < 5 ;
        printf("result2 = %d\n",result2);
        /** 输入一个整数,判断这个数是否在30到70的范围之间  */
        int num = 0 ;
        printf("请输入一个整数 ：");
        scanf("%d",&num);
        BOOL result = num > 30 && num < 70;
        printf("result = %d\n",result );
        BOOL result4 = 30 < num < 70;
        printf("result4 = %d\n",result4);
        /*       BOOL result4 = 30 < num < 70 ;   逻辑是错误的     结果永远是1*/
#endif
    }
#pragma mark   -知识点4  if  语句，  if  else  ，级联式 if语句
    {
#if 0
        if  ( 条件1 )
        {
            语句1；
        }
        else if（ 条件2 ）
        {
            语句2；
        }
        else
        {
            语句3；
        }
#endif
    }
    {
# if 0
      char sex = '0';
      printf("请输入一个字符:");
     scanf( "%c", &sex);
        if (sex == 'm')
        {
            printf("male\n");
        }
#endif
    }
#pragma mark - 练习
    {
/**输入一个 年份，判断该年份是否是闰年？如果是闰年，则输出该年是闰年，否则输出该年不是闰年
        (提示：闰年：能被400整除或者能被4整除，但是不能被100整除。) */
    {
#if 0
            int  year = 0;
            printf("请输入一个年份 ：");
            scanf("%d",&year );
            if ( (year %400 == 0) || (year %4 ==0 && year %100 != 0)  )
            {
                printf("该年是闰年！\n");
            }
            else
            {
                printf("该年不是闰年！\n");
            }
            
#endif
    }
/**   控制台输入两个整数，找出最大值   */
    {
#if 0
        int a = 0;
        int b = 0;
        printf("请输入两个数 :");
       scanf("%d %d",&a, &b);
       if ( a >= b  )
      {
        printf("max = %d\n", a);
      }
    else
     {
        printf("max = %d\n",b );
     }
#endif
    }

/*** 判断输入的数字（1~100）是否是7的倍数，是否包含7。（很多学员对%和/的作用运用不好，比如%可以判断倍数，还可以取出数字的位）*/
    {
#if 0
    int a = 0;
    printf("请输入一个数（1~100）：");
    scanf("%d" ,&a );
    if ( (a % 7 == 0) || ( a % 10 == 7 ) || (  a / 10 == 7))
    {
        printf("是，敲下桌子！\n");
    }else
    {
        printf("否！\n");
    }
#endif
    }
/** 控制台输入字符m(男)、f（女）,m输出男性，f输出女性。如果即没有输入'm'，又没有输入'f'，性别是什么呢？*/
        {
#if 0
        char a = 0;
        printf(" 请输入一个字符 :");
        scanf("%c",&a);
        if ( a == 'm' )
        {
            printf(" 男性\n");
        }else if ( a == 'f')
        {
            printf("女性\n");
        }
        else
        {
            printf("其他字符 \n");
        }
#endif
    }
}
#pragma mark  - 知识点5  条件运算符
    {
#if 0
       int a = 0;
        int b =0;
        printf("请输入两个是数 ：");
        scanf ("%d %d",&a, &b );
        int max = a > b  ? a : b;
        printf("max = %d\n",max);
#endif
    }
    {
#if 0
        int num1 = 0;
        int num2 = 0;
        int num3 = 0;
        printf("请输入三个数 ：");
        scanf (" %d %d %d",&num1, &num2 ,&num3 );
        int max = num1 > num2 ? num1   : num3;
        max = max > num3 ? max : num3;
        printf(" max = %d\n",max );
#endif
    }
#pragma mark  -知识点6  switch 语句
    {
/**从控制台输入1~4，对应打出春夏秋冬的英文词。 */
#if 0
        int num = 0;
        printf("请输入数字（1~4）：");
        scanf("%d",&num);
        switch ( num )
        {
            case 1: printf("spring\n"); break;
            case 2: printf("summer\n");break;
            case 3: printf("autumn \n");break;
            case 4:printf(" winter\n");break;
            default:printf("input error!\n");
        }
#endif
#if 0
    /**分机号， 输入分机号，输出相应的部门
     *8001 ~ caiwu
     *8002 ~ jishu
     *8003 ~ renshi
     *8004 ~ bangongshi
     *8005 ~ houqin
     *其他号码，提示无此号码，请重新输入
     注：ctrl + i 自动对齐
     */
    int num = 0;
    printf("请输入分机号 ：");
    scanf("%d",&num);
    switch ( num )
    {
        case 8001: printf("caiwu\n");break;/*break 跳出switch 语句      复杂的case语句 加个花括号*/
        case 8002 :printf("jishu\n");break;
        case 8003 :printf("renshi\n");break;
        case 8004: printf(" bangongshi\n");break;
        case 8005: printf("houqin\n");break;
        default:printf("无此号码，请重新输入!\n");break;
    }
    
#endif
#if 0
    /*从键盘输入一个字符，如果是数字打印 this is digital，如果是大写字母，打印 this is  capital letter，如果是小写字母，打印 this is letter，如果是其他字符，打印 other。*/
    char a = 0;
    printf("请输入一个字符 :");
    scanf("%c",&a);
    if ( a >= '0'  && a <= '9' ) {printf("this is digital\n");
        
    }else if ( a >= 'a' && a <= 'z'){
        printf("this is letter\n");
    }else if ( a >='A' && a <= 'Z'){
        printf("this is capital letter\n");
    }else
    {printf("other\n");}
    
#endif
}
#pragma mark -知识点7   枚举类型
    
#if 0
/*枚举是一种数据类型，类似 char  ,int
*枚举一般配合switch 语句使用，第一个默认的枚举值为0*/
       enum season  {spring,summer,autumn,winter};
        enum  season  s  = 0;  /*   定义一个枚举变量   enum season  相当于 int  */
        printf("输入一个整数（ 0 ~ 3 ）：");
        scanf("%d",&s);
        switch ( s )
        {
        case spring:printf("春天\n");break;
        case summer :printf("夏天\n");break;
        case autumn :printf("秋天\n");break;
        case winter:printf("冬天\n");break;
        default:break;
        }
#endif
    
#pragma mark    **课堂练习
    
    #if 0
        enum phoneNumber  phone = 0;
    
        printf("请输入电话号码：\n");
    
      scanf("%d",&phone);
    
        switch (phone)
        {
            case caiwu :printf("财务\n");break;
            case jishu :printf("技术部\n");break;
            case renshi :printf("人事部\n");break;
            case bangongshi :printf("办公室\n");break;
            default:break;
        }
#endif
 
    
        return 0;
}
