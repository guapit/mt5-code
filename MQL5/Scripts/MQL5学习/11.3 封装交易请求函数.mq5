#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// #include <Guapit/Symbols.mqh>
#include <Guapit/Trade.mqh>

void OnStart()
  {
    printf("buy type: %d, sell type: %d", ORDER_TYPE_BUY, ORDER_TYPE_SELL);
    // PositionSend(_Symbol, 0, 0.1, 0.0, 0.0, 5, "buy + 1", 819921);
    PositionSend(_Symbol, 1, 0.11, 0.0, 0.0, 0, "sell + 1", 819921);
  }



  
