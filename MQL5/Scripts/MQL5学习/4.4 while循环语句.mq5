#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
   // while的参数是一个条件表达式
   // 如果条件表达式结果为: 0 或者 false, 程序直接结束
   // 如果表达式的条件为: 1 或者 true,程序就会一直循环执行
   //while(1)
   //{
   //   Print("我是while的执行程序");
   //}
   
   //int index = 0;
   //while (index < 10)
   //{
   // Print("当前index的值是: " + string(index));
   // index++;
   //}
   
   int index = 0;
   do
   {
    Print("当前index的值: " + string(index));
    index++;
   }
   while (index < 5);
  }