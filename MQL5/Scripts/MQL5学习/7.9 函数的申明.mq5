#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 1. 先在全局空间申明函数
int sum(int num1, int num2);

// 2. 可以写在执行函数入口的前面
int sum2(int num1, int num2)
{
  int s = num1 + num2;
  return s;
}

// 程序执行入口
void OnStart()
  {
    int a = 10;
    int b = 20;
    int c = sum3(a, b);
  }

// 函数的构造  
int sum(int num1, int num2)
{
  int s = num1 + num2;
  return s;
}

// 3. 可以写在执行函数入口的后面
int sum3(int num1, int num2)
{
  int s = num1 + num2;
  return s;
}