#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

/*
| 学号 | 姓名 | 语文成绩 | 数学成绩 | 身高 |
| ---- | ---- | -------- | -------- | ---- |
| 1    | 张三 | 85       | 96       | 1.68 |
| 2    | 李四 | 99       | 94       | 1.72 |
| 3    | 王五 | 78       | 84       | 1.58 |
*/

struct Student
{
  int id;// 学号
  string name; // 学生姓名
  int language; // 语文成绩
  int math; // 数学成绩
  double height; // 身高
  
} stu5 = {5, "马六", 59, 58, 1.5}; // 定义结构体后可以设置一个默认的变量名

void OnStart()
  {
    // create 创建结构体变量
    Student stu = {4, "阿龙", 100, 100 ,1.85};
    // get 获取结构体变量的成员属性
    printf("学号: %d, 姓名: %s, 语文: %d, 数学: %d, 身高: %.2f",
      stu.id,
      stu.name,
      stu.language,
      stu.math,
      stu.height
    );
    // set 修改成员属性的值
    stu.height = 1.75;
    printf("学号: %d, 姓名: %s, 语文: %d, 数学: %d, 身高: %.2f",
      stu.id,
      stu.name,
      stu.language,
      stu.math,
      stu.height
    );
    // 如果定义结构体时已经指定了一个变量,只能通过修改成员属性重新赋值
    stu5.language = 69;
    stu5.math = 78;
    
    printf("学号: %d, 姓名: %s, 语文: %d, 数学: %d, 身高: %.2f",
      stu5.id,
      stu5.name,
      stu5.language,
      stu5.math,
      stu5.height
    );
    
  
  }