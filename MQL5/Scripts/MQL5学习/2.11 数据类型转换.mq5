#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 如果数据类型不一致,会报一个警告,不是错误
    double p = 3.1415926;
    int i = (int)p;
    
    // char -> int
    int i1 = (int)'a';
    // Print("i1的值: " + string(i1));
    // int -> char
    char c1 = (char)i1;
    // Print("i1的值: " + string(i1));
    
    // uchar -> uint
    uchar c2 = 'b';
    uint i2 = (uint)c2;
    // uint -> uchar
    uchar c2_copy = (uchar)i2;
    
    // double -> int 
    // 如果使用强制转换不会四舍五入
    double d1 = 3.9415926;
    int i3 = (int)d1;
    // Print("i3的值: " + string(i3));
    // int -> double
    int i4 = 100;
    double d2 = (double)i4;
    // Print("d2的值: " + string(d2));
    
    // color -> int
    color clr = clrAliceBlue;
    int i5 = (int)clr;
    // Print("i5的值: " + string(i5));
    // int -> color
    color clr2 = (color)i5;
    // Print("clr2的值: " + string(clr2));
    
    // datetime -> int
    datetime dt = D'2022.07.12 15:48:59';
    int dt_int = (int)dt;
    // Print("dt_int的值: " + string(dt_int));
    // int -> datetime
    datetime dt2 = (datetime)dt_int;
    // Print("dt2的值: " + string(dt2));
    
    // int, double,datetime,color -> string
    string str1 = (string)6666; // int
    string str2 = (string)3.141592; // double
    string str3 = (string)D'2022.07.12 15:48:59';
    // Print("str3的值: " + string(str3));
    string str4 = (string)clrRed; //color
    // Print("str4的值: " + string(str4));
    
    // string -> double
    double d_str = (double)"3.14.15926";
    Print("d_str的值: " + string(d_str));
    
    
  }
