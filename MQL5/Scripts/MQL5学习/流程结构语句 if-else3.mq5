#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    //嵌套流程语句
    
    // 三只小猪沉重,加入 小猪A: 100kg, 小猪B: 200kg, 小猪C: 300kg
    int a = 100;
    int b = 200;
    int c = 300;
    
    // 假如: 小猪A 的重量 小于 小猪B的重量
    if (a < b)
    { 
      // 再如果 小猪B的重量 小于 小猪C的重量
      if ( b < c)
      {
        Print("小猪C的重量最重");
      }
      else
      {
        Print("小猪B的重量最重");
      }
    }
    else // if(a > b) 小猪A的重量 大于了 小猪B的重量
    {
      // 在如果 小猪A的重量 大于了 小猪C的重量
      if (a > c)
      {
        Print("小猪A的重量最重");
      }
      else
      {
        Print("小猪C的重量最重");
      }
    }
    
  }