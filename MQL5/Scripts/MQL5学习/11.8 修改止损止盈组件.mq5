#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

#include <Guapit/Trade.mqh>

void OnStart()
  {
//    int len  = PositionsTotal();
//    string symbol = _Symbol;
//    int type = 1;
//    ulong magic = 8199231;
//    double ask = SymbolInfoDouble(symbol, SYMBOL_ASK);
//    double bid = SymbolInfoDouble(symbol, SYMBOL_BID);
//    
//    PositionInfo pos_info;
//    for(int i=0; i<len; i++)
//    {
//      // 如果订单没找到直接跳过该订单
//      if(!getPositionInfo(i,pos_info)) continue;
//      // 订单获取成功
//      printf("找到订单了!");
//      if(type == 0) moveSLTP(pos_info, symbol, type, ask, 200, 0,magic);
//      else if(type == 1) moveSLTP(pos_info, symbol, type, bid, 200, 100,magic);
//      
//      
//    }
    
    moveSLTPProfit(_Symbol, 0, 50, 0, 8199231);
    moveSLTPProfit(_Symbol, 1, 50, 0, 8199231);
  }

