#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 程序执行入口
void OnStart()
  {
    string str = "阿龙,你好帅,说话声音又好听,我超喜欢你哟!";
    // 无需返回值的调用
    talk(str);
    
    // 需要返回值的调用
    int a = 10;
    int b = 100;
    int c = sum(a, b);
    Print("c的值: " + string(c)); 
  }
  
// 无需返回值的调用
void talk(string str)
{
  // 如果你的的参数没有值
  if(str == "")
  {
    Print("小哥哥,你没有声音!");
    return;
  }
  Print(str);
  // return;
}

// 需要返回值调用 

int sum(int num1, int num2)
{
  int s = num1 + num2;
  
  return s;
}