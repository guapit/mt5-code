
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart()
  {
   // char: 字符型
   // 字符型用 '',只能是单个字符
   char c1 = 'a';
   // Print("c1的值: " + (string)c1);
   
   // 字符型 只能是单个字符
   // char c2 = 'abc';
   
   uchar c3 = 'b';
   // Print("c3的值: " + (string)c3);
   
   // ASCII编码
   char c4 = '\n';
   Print("c4的值: " + (string)c4);
   
   // ASCII部分编码识别
   // char c5 = '\a';
   // char c6 = '\r';
  }
