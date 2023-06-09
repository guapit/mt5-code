#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 程序执行入口
void OnStart()
  {
    int index = 0;
    func(index);
    
    int index2 = 0;
    int val = func2(index2);
    Print("val的值: " + string(val));
  }
  
// 无返回值 有参数的递归
void func(int i)
{
   if(i==10) return; // 最后一个数是 9
   Print("i的值: " + string(i));  
   i = i + 1; // 9 + 1
   // 重新调用自身函数
   func(i);
}
  
// 有返回值 有参数的递归
int func2(int i)
{
  if(i==10)return i;
  i = i + 1;
  return func2(i);
}
