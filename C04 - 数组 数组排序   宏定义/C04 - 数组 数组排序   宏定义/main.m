//
//  main.m
//  C04 - 数组 数组排序   宏定义
//
//  Created by dllo on 15/11/20.
//  Copyright © 2015年 doll. All rights reserved.
//

#import <Foundation/Foundation.h>
/*   定义宏 */
#define PI 3.1415
/*  带参数的宏*/
#define MUL(A, B) ( (A) *( B) )    /*   计算两个数的积的宏,A和B加括号避免A,B的表达式连一块，影响结果*/
int main(int argc, const char * argv[]) {
#pragma mark -知识点1    一维数组
{
#if 0
/*  定义一个数组  */
        int array [5] = { 3, 4, 5, 2, 1};
                /**    
                 *array : 数组名
                 *int [ ] : 数组类型
                 *int : 数组中元素类型
                 *[ ]  ：元素的个数
                 */
/**    1. 整型数组 （数组元素都是整型 ）*/
        int array2 [ 5 ] = {3,4};
/**    2. 浮点型数组（数组元素都是浮点型）*/
        float array3 [ 5 ] = { 4.4, 3.14};
/**    3.字符型数组 （数组元素都是字符型）*/
        char array4 [ 5 ] = { 'a',  'b'};
/**    4.指针数组（数组元素都是指针）*/
/**       数组元素的访问
 *通过下标的形式 ：array[ ]
 *下标是从0开始的。
*/
        int array6 [ 5 ] = { 3, 4, 2, 5, 1};
        printf("%d \n",array6 [ 0 ]);
        printf("%d \n",array6 [ 1]);
        printf("%d \n",array6 [ 2]);
/**   数组元素的赋值  */
        array6 [ 0 ] = 100;
        printf("%d\n",array6 [ 0]);
/**    使用for 循环遍历数组 （打印每个元素）*/
        for (int i = 0; i < 5; i++)
        {
            printf("%d \n",array6 [ i ] );
        }
        for (int i = 1 ; i < 5; i++)
        {
            printf("%d \n ",array6 [ i ] );
        }
        for (int i = 0 ; i < 5; i++)
        {
            printf("%d \n",array6[ i ] );
        }
#endif
}
#pragma mark - 练习
{
/**  1.输入5个数，计算找出最大值和所有元素的和   */
         {
#if 0
            int array [ 5 ] = {0};
            int max = 0;
            int sum = 0;
            printf("请输入5个数：");
                    /**    遍历数组 ，输入 */
            for (int i = 0;  i < 5; i++ )
            {
                scanf("%d",&array [ i ]);
                max = max > array [ i ] ? max : array [ i ];
                sum = sum + array[ i ];
                
            }
            printf("max = %d\nsum = %d\n    ",max, sum);
          #endif
        }
/** 2. 定义一个具有 20个元素 的 整型数组，每个元素的 取值范围是30-70之间，求 数组元素的和*/
        {
#if 0
            int array [ 20 ] = { 0 };
            int sum = 0;
            for (int i = 0 ; i < 20;  i++)
            {
                array [ i ] = arc4random() % ( 70 - 30 + 1) + 30;
                printf("%d ",array [ i ]);
                sum += array [ i ];
            }
            printf("\nsum = %d\n",sum);
#endif
        }
/** 3.复制一个数组，即两个数组 容量一样，把其中一个数组中的元素 复制 到另外一个数组中 */
        {
#if 0
            int array [ 3 ] = {8, 2, 3 };
            int array1 [ 3 ] ={};
            for (int i = 0; i < 3; i++)
            {
                array1 [ i ] = array [ i ];
                printf("%d ",array1 [ i ]);
            }
            printf("\n");
#endif
        }
/**   练习2和练习3 结合在一起 */
        {
#if 0
            int array  [ 20 ] = {};
            int array1 [ 20 ] = {};
            for (int i = 0; i < 20; i++)
            {
                array [ i ] = arc4random() % ( 70 - 30 + 1 ) + 10;
                printf("%d   ",array [ i ]);
            }
            printf("\n");
            for(int j = 0; j < 20 ; j++)
            {
                array1 [ j ] = array [ j ];
                printf("%d   ",array1 [ j ]);
            }
            printf("\n");
            
            
            
#endif
        }
/**   5.整形数组的长度20,随机数范围35 - 90, 找到数组中最大的元素的值和它所对应的下标*/
        {
#if 0
            int array [ 20 ] = {};
            for (int i = 0; i < 20 ;  i++)
            {
                array [ i ] = arc4random() %( 90 - 35 + 1) + 35;
                printf("%d   ",array [ i ] );
            }
            printf("\n");
            /**   遍历数组，找最大值以及它的下标   */
            int max = 0;
            int index = 0;
            for (int j = 0;  j < 20;  j++)
            {
                if (max < array [ j ] )
                {
                    max = array [ j ];
                    index = j;
                }
            }
            printf("max = %d \nindex = %d\n ",max , index);

            
#endif
        }
}
#pragma mark  -知识点2   数组排序（冒泡排序）
{
/**    冒号排序：第一步找出最大值放在数组的最后，然后找出第二大值放在数组的倒数第二个位置 */
/**（1）、定义一个6个整型的数组，让奇偶位元素的值交换。   */
{
#if 0
            int array [ 6 ] = { 3, 5, 6, 8, 4, 7};
            int temp = 0;
            for (int i = 0; i < 6 ; i = i + 2 )
            {
                temp = array [ i ];
                array [ i ] = array [ i + 1 ];
                array [ i + 1 ] = temp ;
            }
            for (int j = 0; j < 6 ; j++)
            {
                printf("%d  ",array [ j ]);
            }
       
#endif
}
/**（2）、定义一个6个整型的数组，如果奇位比偶位元素的值大，则交换两个数的值。  */
{
#if 0
            int array [ 6 ] = {4, 5, 6, 7, 8, 3};
            int temp = 0;
            
            for (int i = 0 ; i < 6; i++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ];
                    array [ i + 1 ] = temp;
                }
            }
            for (int i = 0 ; i < 6;  i++)
            {
                printf("%d  ",array [ i ]);
            }
#endif
}
/**（3）、定义一个6个整型的数组，通过俩俩比较把最大值放在后面，实现最大值放在最后。*/
{
#if 0
            int array [ 6 ] = {2, 4, 6, 1, 3, 2};
            int temp = 0;
            for (int i = 0; i < 6 -1; i++)
            {
                if (array [ i ] > array [ i + 1 ] )
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ];
                    array [ i + 1 ] = temp ;
                }
            }
            for ( int i = 0 ; i < 6 ;   i++)
            {
                printf("%d   ",array [ i ]);
            }
            
#endif
        }
/**（4）、在上题的基础上把倒数第二大的数字放在倒数第二位。（别再原来的for循环上操作，新创建一个for循环）   */
{
#if 0
            int array [ 6 ] = {8, 5, 3, 7, 4, 2 };
            int temp = 0;
            for (int i = 0 ; i < 6 - 1;  i ++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ];
                    array [ i + 1 ] = temp ;
                }
            }
            for (int i = 0; i < 6;  i++)
            {
                
            printf("%d  ",array [ i ]);
            }
            printf("\n");
            for (int i = 0; i < 6 - 2;  i ++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                temp = array [ i ];
                array [ i ] = array [ i + 1 ];
                array [ i + 1 ] = temp;
                }
            }
            for (int i = 0; i < 6;  i++)
            {
                printf("%d   ",array [ i ]);
            }
            printf("\n");
#endif
}
/**（5）、把第三大的数字放在倒数第三位上。    */
{
#if 0
            int array [ 6 ] = {  8, 4, 6, 9, 7, 2 };
            int temp = 0;
            for (int i  = 0; i < 6 - 1; i++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ];
                    array [ i + 1 ] = temp ;
                }
            }
            for ( int i = 0; i < 6 - 2;  i++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array  [ i + 1 ];
                    array [ i + 1 ] = temp ;
                }
            }
            for ( int i = 0;  i < 6 - 3;  i++)
            {
                if (array [ i ] > array [ i + 1])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ] ;
                    array [ i + 1 ] = temp ;
                }
            }
            for ( int i = 0; i < 6 ;  i ++)
            {
                printf("%d   ",array [ i ]);
            }
#endif
        }
/**（6）、把第四大的数字放在倒数第四位上。 */
{
#if 0
            int array [ 6 ] = { 9, 7, 4, 6, 2 ,1};
            int temp = 0;
            /*  第一次  比较五次  */
            for (int i = 0; i < 6 - 1;  i++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1];
                    array [ i + 1 ] = temp ;
                }
            }
            /*   第二次  比较四次  */
            for (int i = 0 ; i < 6 - 2;  i ++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ];
                    array [ i + 1 ] = temp ;
                }
            }
            /* 第三次   比较三次*/
            for (int i = 0 ;  i < 6 - 3;  i ++)
            {
                if (array [ i ] > array [ i + 1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ];
                    array [ i + 1 ] = temp;
                }
            }
            /*   第四次    比较两次  */
            for (int i = 0; i < 6 - 4;  i++)
            {
                if (array [ i ] > array [ i +1 ])
                {
                    temp = array [ i ];
                    array [ i ] = array [ i + 1 ];
                    array [ i + 1 ] = temp;
                    
                }
            }
            /*     打印处理后 的   数组  */
            for (int i = 0 ; i < 6 ;  i++)
            {
                printf("%d   ",array [ i ]);
            }
            printf("\n");
            
#endif
        }
/**（7）、把第五大的数字放在倒数第三位上。 */
{
#if 0
            int array [ 6 ] = { 4, 9, 7, 8, 3, 2};
            int temp = 0;
            for (int  i = 0; i < 6 - 1; i ++)
            {
                for (int j = 0;  j < 6 - 1 - i; j++)
                {
                    if (array [ j ] > array [ j + 1 ])
                    {
                        temp = array [ j ];
                        array [ j ] = array [ j + 1 ];
                        array [ j + 1 ] = temp ;
                    }
                }
            }
            for (int i = 0 ; i < 6;  i++)
            {
            printf("%d   ",array [ i ]);
            }
#endif
        }
/**（8）、观察上面的规律，用双层for循环把数组排序。*/
{
#if 0
            int array [ 6 ] = {7, 3, 8, 9, 2, 1 };
            int temp = 0;
            for (int i = 0; i < 6 - 1;  i++)
            {
                for( int  j = 0; j < 6 -1 - i; j++ )
                {
                    if (array [ j ] > array [ j + 1] )
                    {
                        temp = array [ j ];
                        array [ j ] = array [ j + 1 ];
                        array [ j + 1 ] = temp ;
                    }
                }
                
            }
            for (int i = 0; i < 6; i++)
            {
                printf("%d   ",array [ i ]);
            }
            printf("\n");
#endif
        }
/**    冒泡排序：  */
{
#if 1
            int array [ 6 ] = {3, 500,234,34,243,453};
            int temp = 0 ;
            for (int i = 0 ; i < 6 -1;  i++)
            {
                for (int j = 0 ; j < 6 - i - 1;  j++)
                {
                    if (array [ j ] > array [ j + 1 ])
                    {
                        temp = array [ j ];
                        array [ j ] = array [ j + 1 ];
                        array [ j + 1 ] = temp;
                    }
                }
            }
            for (int i = 0 ; i < 6; i ++)
            {
                printf("%d   ",array [ i ]);
            }
#endif
        }
/**  计算数组元素个数      */
{
#if 0
            int array [ ] = { 3, 4, 2 ,1};
            /**       计算数组的字节数  */
            printf("%lu\n",sizeof(array));
            int count1 = sizeof(array) / sizeof( int );
            /*   数组的总字节数 除以第一个 元素所占的字节数，就可以得出有几个元素  */
            int count2 = sizeof(array) /sizeof(array [ 0 ]);
            printf("count1 = %d\ncount2 = %d\n",count1, count2);
#endif
}
/**     冒号排序（ 优化版   ）*/
{
#if 0
            int array [  ] = { 34, 234, 42, 424,34, 23 };
            int  count = sizeof(array) / sizeof(array [ 0 ]);
            int temp = 0;
            int flag = 1 ;  /*  1  表示数组无序   之前不知道数组是否无序，先将flag 置1 执行程序   */
            for (int i = 0; i < count - 1 && 1 == flag ;   i++)
            {
                flag = 0;       /*  0表示有序  ，假设有序         若是有序  第1层for 循环执行一次   若碰到有一对相邻两个数有无序的 第1层for循环执行2次 */
                for (int j = 0 ; j < count - 1 - i ; j++)
                {
                    if (array  [ j ] > array [ j + 1 ])
                    {
                        temp = array [ j ];
                        array [ j ] = array [ j+ 1 ];
                        array [ j + 1 ] = temp ;
                        flag = 1 ; /*   发生交换， 说明是无序，将flag 赋值为1 */
                    }
                }
            }
            for (int i = 0 ; i < 6; i ++)
            {
                printf("%d   ",array [ i ]);
            }
            
#endif
}
}
#pragma mark - 知识点3  字符数组（字符串）
{
{
#if 0
/***字符数组是一维数组，数组元素是字符类型（ char ）*/
/**定义字符数组    */
        char string1 [ 5 ] = {'a', 'b', 'c', 'd', 'e'};
/**   字符数组所占的字节数  */
        printf("%lu\n",sizeof(string1));
        char string2 [ ] = {'i', 'O', 'S'};
        printf("%lu\n",sizeof(string2));
/*   注意 ： 双引号定义的字符数组，在数组的最后一位 ，系统会自动添加一个 \0  ,所以，整个字符数组所占的字节数会多一个字节    */
        char string3 [ ] = "iphone";     /*  “iPhone”这个字符串有7个字节数*/
        printf("%lu\n",sizeof(string3));
#endif
/**    字符串常用的函数   */
/**    函数 1  strlen (),  计算字符串长度 */
{
# if 0
            char string4 [ ] = "iPhone6Splus";
        printf(" 长度：%lu\n",strlen(string4));
        printf("字节数：%lu\n",sizeof(string4));
#endif
}
/*  函数2 strcpy ( )  ,字符串拷贝  */
#if 0
        char string [  ] = "iphone";
        char string8 [  ] = "iOS";
        strcpy (string , string8);
        printf("string :%s\n",string);
        printf("string8 :%s\n ",string8);
        printf("over\n");
/**   %s  ,输出字符串，直到遇到 \0 ，停止输出   */
#endif
}
/**  函数3 拼接 strcat   */
{
#if 0
        char string [ ] = "iphone";
        char string2  [20 ] = "iOS";
        strcat(string2, string);
        /*string 拼接 在string2 的后面 */
        printf("%s\n",string );
        printf("%s\n",string2);
#endif
}
/**  函数4 字符串比较 strcmp    */
{
#if 0
    char string [ ] = "abc";
    char string2 [ ] = "acc";
/*  strcmp 函数有一个返回值 ，通过返回值 判断比较结果
*strcmp 是两个字符串从第一个字节开始比较，比较两个字符的ASCII码值之差，当比较值不为0时，停止比较，根据函数返回值的正、负，判断大小。*/
    int result = strcmp(string, string2);
    printf("result :%d\n",result);
#endif
}
/**    1.查找字符串中的空格数：例如“ I  love  iOS ,   i  want  an  iPhone6s  ”    */
{
#if 0
            int count = 0;
            char str [ ] = " I love iOS ， i  want  an iPhone6s  ";
            int i =0;
            while (str [ i ] != '\0')
            {
                if (str [ i ] == ' ')
                {
                    count++;
                }
                i++;
            }
            printf("空格数 ：%d\n", count);
#endif
}
/**   1.查找字符串中的空格数：例如“ I  love  iOS ,   i  want  an  iPhone6s  ”    */
{
#if 0
            char str [ ] = " I  love  iOS ,   i  want  an  iPhone6s";
            int count = 0;
            int i = 0;
            while (str [ i ] != '\0')
            {
                if (str [ i ] == ' ')
                {
                    count++;
                }
                i++;
            }
            printf("空格数 = %d\n",count);
#endif
}
 /* 2. 反向输出字符串“abcdef” 输出“fedcba” */
 /* 3.倒转字符串“ abcdef ”   */
}
#pragma mark -知识点4 宏定义
{
#if 0
     /**  宏定义通常是在函数的外边定义的
      *详见 main 函数的上面宏部分
      */
    printf("%f\n",PI);
    MUL(3, 5);
    printf("%d\n",MUL(3, 5));
#endif
}
  return 0;
}
