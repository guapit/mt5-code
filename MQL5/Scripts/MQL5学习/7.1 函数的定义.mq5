#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 自定义函数申明要在写全局空间

// 程序执行入口
void OnStart()
  {

  }


/*
1. 返回值的类型: int
2. 函数名称: sum
3. 参数列表: int num1, int num2
4. 操作语句: int s = num1 + num2;
5. 返回值: return s;

*/
  
int sum(int num1, int num2)
{
  int s = num1 + num2;
  return s;
}

