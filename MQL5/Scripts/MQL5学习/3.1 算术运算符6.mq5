#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    int a = 2 * 2 * 2;
    //Print("a的3次方以后的数: " + string(a));
    
    int a2 = (int)MathPow(2,3);
    //Print("a2的3次方以后的数: " + string(a2));
    
    double b1 = MathPow(1.2,2.4);
    Print("b1的2.4次方以后的数: " + string(b1));
  }