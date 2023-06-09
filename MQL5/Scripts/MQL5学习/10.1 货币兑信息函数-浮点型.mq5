#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 获取当前图表的货币兑名称
    string symbol = Symbol();
    string symbol2 = _Symbol;
    printf("当前图表货币兑1: %s, 货币兑2: %s", symbol,symbol2);
    
    // 获取做多(Buy)方向的价格
    double ask = SymbolInfoDouble(symbol,SYMBOL_ASK);
    double ask_high = SymbolInfoDouble(symbol,SYMBOL_ASKHIGH);
    double ask_low = SymbolInfoDouble(symbol,SYMBOL_ASKLOW);
    printf("当前做多的价格: %.5f, 当日最高做多价: %.5f, 当前最低做多价: %.5f",
       ask, ask_high, ask_low);
       
    // 获取做空(Sell)方向的价格
    double  bid = SymbolInfoDouble(symbol,SYMBOL_BID);
    double bid_high = SymbolInfoDouble(symbol,SYMBOL_BIDHIGH);
    double bid_low = SymbolInfoDouble(symbol,SYMBOL_BIDLOW);
    printf("当前做的空价格: %.5f, 当日最高做空价: %.5f, 当前最低空做空价: %.5f",
       bid, bid_high, bid_low);
       
    // 最后订单信息
    double last = SymbolInfoDouble(symbol,SYMBOL_LAST);
    double last_high = SymbolInfoDouble(symbol,SYMBOL_LASTHIGH);
    double last_low = SymbolInfoDouble(symbol,SYMBOL_LASTLOW);
    printf("最后订单价格: %.5f, 最高订单价: %.5f, 最低订单价: %.5f",
       last, last_high, last_low);
       
    // 最后订单的成交量
    double volume = SymbolInfoDouble(symbol,SYMBOL_VOLUME_REAL);
    double volume_high = SymbolInfoDouble(symbol,SYMBOL_VOLUMEHIGH_REAL);
    double  volume_low = SymbolInfoDouble(symbol,SYMBOL_VOLUMELOW_REAL);
    printf("最后订单成交量: %.5f, 最高成交量: %.5f, 最低成交量: %.5f",
       volume, volume_high, volume_low);
       
    // 最小的报价单位
    double point = SymbolInfoDouble(symbol,SYMBOL_POINT);   
    double tick_value = SymbolInfoDouble(symbol,SYMBOL_TRADE_TICK_VALUE);
    double tick_value_profit = SymbolInfoDouble(symbol,SYMBOL_TRADE_TICK_VALUE_PROFIT);
    double tick_value_loss = SymbolInfoDouble(symbol,SYMBOL_TRADE_TICK_VALUE_LOSS);
    printf("最小的报价单位: %.5f, 每点价值: %.5f, 盈利方向每点价值: %.5f, 亏损方向每点价值: %.5f", 
       point, tick_value, tick_value_profit, tick_value_loss);
       
    // 手续费
    double buy_swap = SymbolInfoDouble(symbol,SYMBOL_SWAP_LONG);
    double sell_swap = SymbolInfoDouble(symbol,SYMBOL_SWAP_SHORT);
    printf("做多手续费: %.5f, 做空手续费: %.5f", 
       buy_swap, sell_swap);
  }
