#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 三元运算符
    // int a = 100;
    // int b = 200;
    // int c = 0;
    // 基本三元流程
    // c = a < b ? a : b;
    /*
    if ( a < b)
    {
      c = a;
    }
    else
    {
      c = b;
    }
    */
    // Print("当前c的值: " + string(c));
    
    int a = 100;
    int b = 400;
    int c = 300;
    int d = 0;
    
    // d = a < b ? b : a;
    
    // 1. 判断 A和B谁最大 ? 返回B : 返回A
    // a < b ? b : a;
    // 2. 返回B的结果在进行判断: B和C 谁最大? 返回C : 返回B
    // (b < c ? c : b) 
    // 3. 返回A的结果在进行判断: A和C 谁最大? 返回A : 返回C
    // (a > c ? a : c)
    d = a < b ? (b < c ? c : b) : (a > c ? a : c);
    Print("当前D的值: " + string(d));
  }