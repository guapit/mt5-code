#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // -号在单独数字的前面表示负号
    int a = -10;
    // Print("a的值是: " + (string)a);
    
    // 两个数相减
    int a2 = 10;
    a2 = a2 - 10; // a2 = 10 - 10
    a2 = a2 - 10 - 10;
    
    // 两个数相减的简写
    int a3 = 10;
    a3 -= 10; // a3 = 10 - 10
    Print("a3的值是: " + (string)a3);
    
    // 字符串可以相减吗??? 不可以
    string str1 = "zhangsan";
    string str2 = "lisi";
    // string str3 = str1 - str2;  //Error
  }