#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // while的降序循环
    int index = 10;
    while (index >= 0)
    {
      // Print("当前的序号: " + string(index));
      index--;
    }
    
    // for降序的循环
    for(int i = 10; i >= 0; i--)
    {
      Print("当前的序号: " + string(i));
    }
    
    // 改参数
    for(int i = 10; i >= 0; i = i-2)
    {
      Print("当前的序号: " + string(i));
    }
  }