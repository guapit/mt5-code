#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"
// 调用函数库
#include <Tools/Maths.mqh>


void OnStart()
  {
    int a = 20;
    int b = 10;
    int c = sum(a, b);
    Print("c的值: " + string(c));
    
    int d = sub(a, b);
    Print("d的值: " + string(d));
    
  }

