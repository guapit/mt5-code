#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {  
    int a = 20;
    int b = 10;
    if(a > b)
    {
      // swap(a, b);
      // swap2(a, b);
      swap3(a, b);
      Print("修改后a的值: " + string(a));
      Print("修改后b的值: " + string(b));
    }
  }
// 数据类型 参数1 只有读取权限(Read), 在函数内部临时修改权限, 但是最终不会修改原始值
void swap(int num1, int num2)
{
  int temp = num1;
  num1 = num2;
  num2 = temp;
  Print("修改后num1的值: " + string(num1));
  Print("修改后num2的值: " + string(num2));
}
// 如果加上 引用符号'&', 读取权限(Read),写入权限(write),会最终修改原始值
void swap2(int &num1, int &num2)
{
  int temp = num1;
  num1 = num2;
  num2 = temp;
}

// 只有读取权限(Read), 没有写入权限(write) ,不会原始值
void swap3(const int num1, const int num2)
{
  int temp = num1;
  Print("temp: " + string(temp));
  Print("num1: " + string(num1));
  Print("num2: " + string(num2));
}
