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
// 1.定义结构体的类型: struct
// 2. 起一个结构体合集的别名
// 3. 定义成员属性: 数据类型 + 成员名
// 4. 访问成员属性的方法: 结构体的变量名.成员属性名
struct Student
{
  int id;// 学号
  string name; // 学生姓名
  int language; // 语文成绩
  int math; // 数学成绩
  double height; // 身高
  
};

void OnStart()
  {
   // 数组
   int arr[5] = {1, 2, 3, 4, 5};
   // 结构体
    Student stu1 = {1, "张三", 85, 96, 1.68};
    // get 获取结构体成员属性的值
    printf("学号: %d, 姓名: %s, 语文: %d, 数学: %d, 身高: %.2f",
      stu1.id,
      stu1.name,
      stu1.language,
      stu1.math,
      stu1.height
    );
    Student stu2 = {2, "李四", 99, 94, 1.72};
    Student stu3 = {3, "王五", 78, 84, 1.58};
  }
