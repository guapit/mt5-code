#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 强制转换数据类型
    // char 转成 int
    char c1 = 'a';
    int i1 = (int) c1; // 只能转换当前变量
    int i2 = int(c1); // 转换括号内的结果
    // Print("i1转换后的结果: " + (string)i1);
    // int 转 char
    char c2 = (char)i1;
    // Print("c2转换后的结果: " + (string)c2);
    
    // int 转 double
    int a1 = 10;
    double b1 = (double)a1;
    //Print("b1转换后的结果: " + (string)b1);
    // double 转 int
    int d1 = (int)b1;
    //Print("c1转换后的结果: " + (string)d1);
    
    // datetime 转 int
    datetime dt1 = D'2022.07.31 15:58:59';
    int dt_int = (int)dt1;
    //Print("dt_int转换后的结果: " + (string)dt_int);
    //int 转 datetime
    datetime dt2 = (datetime) dt_int;
    //Print("dt2转换后的结果: " + (string)dt2);
    
    // color 转 int
    color clr1 = clrAliceBlue;
    int clr_int = (int) clr1;
    //Print("clr_int转换后的结果: " + (string)clr_int);
    // int 转 color
    color clr2 = (color)clr_int;
    //Print("clr2转换后的结果: " + (string)clr2);
    
    // int , double ,datetime 转字符串
    int str_int  = 9999;
    string str1 = (string) str_int;
    // Print("str1转换后的结果: " + (string)str1);
    
    string str2 = (string)3.1415926;
    // Print("str2转换后的结果: " + (string)str2);
    
    // 注意 string 转double的话 字符串里面的小数点只能有一个
    double db = (double)"3.1415.926asd";
    // Print("db转换后的结果: " + (string)db);
    
    string str3 = (string)D'2022.07.31 15:58:59';
    Print("str3转换后的结果: " + (string)str3);
    
    color clr3 = clrAliceBlue;
    string str4 = (string)clr3;
    Print("str4转换后的结果: " + str4);
  }