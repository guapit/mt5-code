#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// #include <Guapit/Symbols.mqh>
#include <Guapit/Trade.mqh>

void OnStart()
  {
    //selectTicket(NULL,0,"",8199231);
    string symbol = "GBPUSD";
    string com = symbol + " " + "Buy" + " " + (string)2;
    //BuyAdd(symbol, 0.1,100,0,5,com,8199231);
    string symbol2 = _Symbol;
    string com2 = symbol2 + " " + "Sell" + " " + (string)3;
    SellAdd(symbol2, 0.8,100,0,5,com2,8199231);
  }
 