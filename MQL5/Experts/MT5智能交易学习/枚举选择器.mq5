
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

enum name {
  zhangsan,
  lisi,
  wangwu,
  maliu
};

input name mingzi = lisi;

enum date {
  M1,
  M5,
  M15,
  M30
};

input date 选择交易周期 = M15;
// 在EA系统开始前执行一次
int OnInit()
  {
     Print("叫号: " + string(mingzi));
     Print("叫号2: " + string(选择交易周期));
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+
