
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart()
  {
    // char 转 int
    char c1 = 'a';
    int i = (int)c1;
    // int 转 char
    c1 = (char)i;
    
    uchar c2 = 'c';
    uint i2 = (uint)c2;
    
    // int 转double
    int a1 = 10;
    double b1 = (double)a1; 
    //double 转 int
    a1 = (int)b1;
    
    // color 转 int
    color clr = clrAliceBlue;
    int a2 = (int)clr;
    Print(a2);
    // int 转 color
    clr = (color)a2;
    Print(clr);
    
    // datetime -> int
    datetime dt = D'2022.07.12 15:58:59';
    int dt_int = (int)dt;
    dt = (datetime)dt_int;
    
    // int,doubel, datetime -> string
    string str1 = (string) 9999;
    string str2 = (string) 3.1415926;
    string str3 = (string) D'2022.07.12 15:58:59';
    string str4 = (string) clrRed;
    
    double str5 = (double)"3.14.159";
    Print(str5);
    
  }

