#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // while
    /*
    int index = 0;
    while (index < 10)
    {
      Print("index的值是: " + string(index));
      index++;
    }
    */
    
    // for循环语句
    
    // i++ 就是 i = i + 1;
    /*
    for (int i = 0; i < 10; i=i+1)
    {
      Print("index的值是: " + string(i));
    }
    */
    
    
    // 标准流程
    /*
    for(int i = 0; i < 10; i++)
    {
      Print("index的值是: " + string(i));
    }
    */
    
    // 1. 间隔循环
    /*
    for(int  i = 0; i < 10 ; i=i+2)
    {
      Print("index的值是: " + string(i));
    }
    */
    
    // 2. 间隔循环
    /*
    for(int  i = 0; i < 10 ; i++)
    {
      if (i % 2 == 0) 
      {
        Print("index的值是: " + string(i));
      }
      
    }
    */
    // 如果 i没有初始值, 会被默认为系统值
    /*
    for(int i=0; i < 10 ; i++)
    {
      Print("index的值是: " + string(i));
    }
    */
    // int i2;
    // Print("i2的值" + i2);
    
    // 改变条件表达式
    for(int i = 3; i < 10 + 2 ; i++)
    {
      Print("index的值是: " + string(i));
    }
    
    
  }