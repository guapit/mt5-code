
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//--- input parameters
// 1. 颜色名词常量
input color    选择颜色=clrRed;

// 2. RGB颜色模式
input color   clr2 = C'255,0,0';
input color   clr3 = C'239,12,178';

// 3. 十进制的RGB模式
input color clr4 = C'0x40,0x22,0xdc';


// 4. 十进制模式
// 注意写法: 倒着写
input color clr5 = 0xdc2240;

int OnInit()
  {

   return(INIT_SUCCEEDED);
  }

void OnDeinit(const int reason)
  {

   
  }

void OnTick()
  {

   
  }

