#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 程序执行入口
void OnStart()
  {
    // 真实参数
    int a = 10;
    int b = 20;
    int c = sum(a, b);
    // 实参
    int num1 = 10;
    int num2 = 20;
    int c2 = sum(num1, num2);
    
    double a2 = 3.14;
    double b2 = 2.74;
    double c3 =sum2(a2, b2);
  }

// 形参的名称不影响其他函数调用
int sum(int num1, int num2)
{
  Print("num1的值:" + string(num1));
  Print("num2的值" + string(num2));
  int s = num1 + num2;
  return s;
}

double sum2(double num1, double num2)
{
  Print("num1的值:" + string(num1));
  Print("num2的值" + string(num2));
  double s = num1 + num2;
  return s;
}