#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 全局空间
// 全局变量或者函数,在当前定义以下的行都是可见的
int a = 10;

// 程序执行入口
void OnStart()
  {
    // 获得全局变量的结果
    Print("当前a的值: " + string(a));
    
    // 局部空间
    
  }
