#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"
/*
主表

| 学号 | 姓名 | 性别 | 身高   |
| ---- | ---- | ---- | ------ |
| 1    | 吕布 | 男   | 2.10cm |
| 2    | 貂蝉 | 女   | 1.75cm |
| 3    | 小乔 | 女   | 1.58cm |

从表

| 主表序号 | 语文 | 数学 | 英语 |
| -------- | ---- | ---- | ---- |
| 1        | 85   | 96   | 92   |
| 2        | 98   | 99   | 100  |
| 3        | 89   | 85   | 80   |
*/

// 从表
struct Score
{
  int language; // 语文分数
  int math; // 数学分数
  int english; // 英语分数
};

// 主表
enum Gender {male, famale};
struct Student
{
  int id; // 学号
  string name; // 姓名
  Gender gender; // 性别
  double height; // 身高
  Score score; // 学生的成绩表
};

void OnStart()
  {
    Student stu = {1, "吕布", male, 2.10, {85, 96, 92}};
    Print("吕布的语文分数: " + string(stu.score.language));
    Print("吕布的数学分数: " + string(stu.score.math));
    Print("吕布的英语分数: " + string(stu.score.english));
    
    Student stu_arr[3] = {
      {1, "吕布", male, 2.10, {85, 96, 92}},
      {2, "貂蝉", famale, 1.75, {98, 99, 100}},
      {23, "小乔", famale, 1.58, {89, 85, 80}}
    };
    // 向控制台输出内容
    talk_array(stu_arr);
  }
  
  
void talk_array(Student & stu[])
{
  for(int i=0; i<ArraySize(stu);i++)
  {
    string gander = "男";
    if(stu[i].gender == famale)
        {
          gander = "女";
        }
    printf("主表: 学号: %d, 姓名: %s, 性别: %s,身高: %.2f , 从表: 语文: %d, 数学: %d, 英语: %d",
        stu[i].id,
        stu[i].name,
        gander,
        stu[i].height,
        stu[i].score.language,
        stu[i].score.math,
        stu[i].score.english
        );
  }
}
