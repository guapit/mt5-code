
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart()
  {
    // bool: 布尔类型
    bool b1 = true;
    // Print("b1的值=" + (string) b1);
    
    bool b2 = 1;
    // Print("b2的值=" + (string) b2);
    
    //如果布尔的值为假
    bool b3 = false;
    // Print("b3的值=" + (string) b3);
    
    bool b4 = 0;
    // Print("b4的值=" + (string) b4);
    
    // 关于bool类型的其他问题
    bool b5 = 10;
    // Print("b5=" + (string) b5);
    
    bool b6 = -0;
    Print("b6=" + (string) b6);
  }
