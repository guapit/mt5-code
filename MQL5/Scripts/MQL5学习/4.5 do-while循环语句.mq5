#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // do while循环语句
    int index = 0;
    // do里面的执行程序,会至少执行一次
    do
    {
      // 执行程序
      if (index == 0)
      {
        Print("循环程序开始...");
        Print("index的值: " +  string(index));
      }
      else
      {
        Print("index的值: " +  string(index));
      }
      
      index++;
    } 
    while (index < 5);
  }