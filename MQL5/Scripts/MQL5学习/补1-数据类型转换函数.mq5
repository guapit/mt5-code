//+------------------------------------------------------------------+
//|                                                  补1-数据类型转换函数.mq5 |
//|                                  Copyright 2022, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
    // int to string
    string str1 = IntegerToString(1234, 8, '0');
    Print("str1组成的字符串: " + str1);
    
    // double to string
    string str2 = DoubleToString(3.1415926,2);
    Print("str2组成的字符串: " + str2);
    string str3 = DoubleToString(3.1415926,10);
    Print("str2组成的字符串: " + str3);
    
    // char to string
    string str4 = CharToString('a');
    Print("str4组成的字符串: " + str4);
    
    // enum to string
    enum name { 
      zhangsan,
      lisi,
      wangwu};
    name n = wangwu;
    string str5 = EnumToString(n);
    Print("str5组成的字符串: " + str5);
    
  }

