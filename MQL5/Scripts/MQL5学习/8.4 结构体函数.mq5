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
| 4    | 阿龙 | 100      | 100      | 1.75 |
*/

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
    Student stu4 = {4, "阿龙", 100, 100, 1.75};
    talk(stu4);
    Student stu5 = {5, "马六", 58, 59, 1.50};
    talk(stu5);
    
    Student stus[3] = {
      {1, "张三", 85, 96, 1.68},
      {2, "李四", 99, 94, 1.75},
      {3, "王五", 78, 84, 1.58}
    };
    talk_array(stus);
  }
  
void talk(Student &stu)
{
  printf("学号: %d, 姓名: %s, 语文: %d, 数学: %d, 身高: %.2f",
      stu.id,
      stu.name,
      stu.language,
      stu.math,
      stu.height
      );
}

void talk_array(Student & stu[])
{
  for(int i=0; i<ArraySize(stu);i++)
  {
    printf("学号: %d, 姓名: %s, 语文: %d, 数学: %d, 身高: %.2f",
        stu[i].id,
        stu[i].name,
        stu[i].language,
        stu[i].math,
        stu[i].height
        );
  }
}
  
