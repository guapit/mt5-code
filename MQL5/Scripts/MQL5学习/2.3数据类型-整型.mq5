
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart()
  {
    // char: 最小的整型
    char c1 = 10;
    // Print("c1的值： " + c1);
    
    // char的最大值： 127
    char c2 = 127;
    // Print("c2的值： " + c2);
    
    // char的最小值：-128
    char c3 = -128;
    // Print("c3的值： " + (string)c3);
    
    // uchar 非负数的整型
    uchar c4 = -10;
    Print("c4的值： " + (string)c4);
  }

