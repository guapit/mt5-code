#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// #include <Guapit/Symbols.mqh>
#include <Guapit/Trade.mqh>

void OnStart()
  {
    PositionSend(NULL, 0, 0.18, 100, 200, 5, "buy + 1", 8199231);
    PositionSend(_Symbol, 1, 0.12, 100, 180, 0, "sell + 1", 8199231);
  }