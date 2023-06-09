#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 程序执行入口
void OnStart()
  {
    // 无返回值无参数函数的调用
    talk();
    
    // 无返回值有参数函数的调用
    string str1 = "阿龙,你好帅,说话声音又好听,我超喜欢你哟!2";
    talk2(str1);
    
    // 有返回值无参数函数的调用
    int a = get();
    Print("a的值: " + string(a));
    
    // 有返回值有参数函数的调用
    int a1 = 10;
    int b1 = 6;
    int c1 = sub(a1, b1); 
    Print("c1的值: " + string(c1));
  }
  
// 无返回值无参数
void talk()
{
  Print("阿龙,你好帅,说话声音又好听,我超喜欢你哟!");
}

// 无返回值有参数
void talk2(string str)
{
  Print(str);
}

// 有返回值无参数
int get()
{
  return 10;
}

// 有返回值有参数
int sub(int num1, int num2)
{
  int s = num1 - num2;
  return s;
}