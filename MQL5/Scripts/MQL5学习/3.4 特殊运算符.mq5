#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
   // --- 特殊运算符 --- //
   // 表示多个条件表达式是否成立,并返回真值(true)或者假值(false)
   bool yuanfang = false;
   
   // !  根据表达式的结果, 取反
   // 快捷键 Shift + 1
   //bool a = true;
   //yuanfang = !a; // 结果是： false
   //Print("大人，我觉得这件事是： " + (string)yuanfang);
   
   //bool b = false;
   //yuanfang = !b;
   //Print("大人，我觉得这件事是： " + (string)yuanfang);
   
   // &&(和) 判断多个表达式的结果是否成立
   // 快捷键 Shift + 7
//   int a = 1;
//   int b = 2;
//   int c = 3;
//   //yuanfang = a < b && b < c; // 所有条件满足就为真
//   //Print("大人，我觉得这件事是： " + (string)yuanfang);
//   
//   yuanfang = a > b && b < c; // 当其中一个条件不满足就为假
//   Print("大人，我觉得这件事是： " + (string)yuanfang);
   
   
   // ||(或者) 判断多个条件中是否有一个条件结果成立
   // 快捷键 Shift + \
   int a1 = 1;
   int b1 = 2;
   int c1 = 3;
   yuanfang = a1 < b1 || b1 > c1; // 当其中只要满足1个条件就为真
   Print("大人，我觉得这件事是： " + (string)yuanfang);
   
  }