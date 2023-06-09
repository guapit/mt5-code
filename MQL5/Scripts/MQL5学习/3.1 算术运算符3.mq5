#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // *号表示相乘
    int a = 2 * 3;
    //Print("a的值: " + (string)a);
    
    int a2 = 3;
    a2 = a2 * 4;
    // Print("a2的值: " + (string)a2);
    
    // 简写算法
    int a3 = 3;
    a3 *= 4;
    // Print("a3的值: " + (string)a3);
    
    double d1 = 1.2;
    d1 *= 1.2;
    // Print("d1的值: " + (string)d1);
    
    // 字符串不可以使用乘法
    string str = "我爱编程";
    // str = str * 2;
    
    // 除法
    // 如果左侧返回是浮点型,右侧却全是整型,那么结果就是整数
    // 如果右侧除法中 被除数或者除数有一个是浮点型,那么结果就是浮点型
    double c1 = 10 / 3.0;
    // Print("c1的值: " + (string)c1);
    
    // 除法运算中,除数不可以为0.0 
    // double c2 = 10.0 / 0.0; //??? Error 错误例子 
     
    double c3 = 0.0 / 10.0;
    Print("c3的值: " + (string)c3);
    
    // 除法也可以简写
    double c4 = 10.0;
    c4 /= 5.0;
  }