#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 程序执行入口
void OnStart()
  {
    // int 函数重载
    int a = 10;
    int b = 20;
    int c = sum(a,b);
    Print("c的结果: " + string(c));
    
    // double的函数重载
    double a2 = 3.14;
    double b2 = 6.18;
    double c2 = sum(a2 ,b2);
    Print("c2的结果: " + string(c2));
    
    // 同样函数名,参数长度不同
    int a3 = 30;
    int b3 = 10;
    int c3 = 5;
    int d3 = sub(a3, b3); // 30 - 10
    int e3 = sub(a3, b3, c3); // 30 - 10 - 5
    // 同样函数名,参数位置中对应的类型不同
    int f3 = sub(a3, b3,true);
  }
  
// 同样的函数名,可以多个数据类型使用
int sum(int num1, int num2)
{
  int s = num1 + num2;
  return s;
}

double sum(double num1, double num2)
{
  double s = num1 + num2;
  return s;
}

// 同样函数名,参数长度不同可以同时使用
int sub(int num1, int num2)
{
  int s = num1 - num2;
  return s;
}
int sub(int num1, int num2,int num3)
{
  int s = num1 - num2 - num3;
  return s;
}
// 同样函数名,参数类型定义不同可以同时使用

int sub(int num1, int num2, bool p)
{
  int s = num1 - num2;
  if(p==true)
  {
    Print("计算结束");
  }
  return s;
}