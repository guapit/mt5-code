#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"
      
void OnStart()
  {
    // 1. 颜色名词常量
    color    选择颜色=clrRed;
    
    // 2. RGB颜色模式
    color   clr2 = C'255,0,0';
    color   clr3 = C'239,12,178';
    
    // 3. 十进制的RGB模式
    color clr4 = C'0x40,0x22,0xdc';
    
    // 4. 十进制模式
    // 注意写法: 倒着写
    color clr5 = 0xdc2240;
  }