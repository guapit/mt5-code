#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 调用变量或者函数必须在申明的后面
// Print("a的值: " + string(a));

// 全局空间作用域
int a = 20;
int b = 10;

void OnStart()
  {
    // 局部空间作用域 1 层
    Print("a的值: " + string(a));
    Print("b的值: " + string(b));
    if(a > b)
    {
      // 局部空间 2 层
      swap(a, b);
      Print("改变后a的值: " + string(a));
      Print("改变后b的值: " + string(b));
      int c = 30;
      
    }
    // 跟第一层同级空间 下的变量是无法获取的
    //{
    //  Print("c的值: " + string(c));
    //}
    
  }

void swap(int &num1, int &num2)
{
  // 局部空间作用域 3层
  int temp = num1;
  num1 = num2;
  num2 = temp;
  Print("函数内a的值: " + string(a));
  Print("函数内b的值: " + string(b));
}


