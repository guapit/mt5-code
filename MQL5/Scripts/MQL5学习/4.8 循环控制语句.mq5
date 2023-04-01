#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 正常循环流程
    /*
    for(int i = 0; i < 10; i++)
    {
      Print("当前序号: " + string(i));
    }
    */
    
    // break; 截断循环流程, 结束循环
    /*
    
    for(int i=0; i<10; i++)
    {
      Print("当前序号: " + string(i));
      if(i == 2)
      {
        // break; 如果出现在前面, 后面的代码不再执行 
        Print("满足条件,结束循环.");
        break;
      }
    }
    */
    
    // continue; 过滤指定的序列循环
    for(int i=0; i<10; i++)
    {
      // Print("当前序号: " + string(i));
      if(i % 2 == 0)
      {
        continue;
      }
      Print("当前序号: " + string(i));
    }
        
  }

