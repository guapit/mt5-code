#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 1. 创建交易品种信息结构体
struct SymbolInfo
{
  double ask; // buy方向报价
  double bid; // sell方向报价
  double point; // 最小报价单位
  int digits; // 小数点的位数
  int spread; // 点差
  ENUM_ORDER_TYPE_FILLING filling_mode; // 订单模式
  int stops_level; // 止损价和报价之间最小的间距点数
};

void OnStart()
  {
    string sym = "EURUSD";
    SymbolInfo sym_info;
    bool is_sym = getSymbolInfo(sym, sym_info);
    printf("当前货币对是否存在: %d", is_sym);
    printf("当前交易品种: %s, buy: %.5f, sell: %.5f, 最小报价单位: %.5f, 小数点位数: %d, \n" +
           "点差: %d, 订单模式: %d, 最小止损范围点数: %d"
           ,
           sym,
           sym_info.ask,
           sym_info.bid,
           sym_info.point,
           sym_info.digits,
           sym_info.spread,
           sym_info.filling_mode,
           sym_info.stops_level
    );
  }

// 2. 获取指定交易品种的信息
bool getSymbolInfo(const string symbol, SymbolInfo & symbol_info)
{
  // 判断货币对是否存在
  // bool is_custom = false;
  // bool is_exsit = SymbolExist(symbol, is_custom);
  // 1 判断货币是否存在, 2 加到交易品种列表
  bool is_exsit = SymbolSelect(symbol,true);
  if(is_exsit)
  {
    symbol_info.ask = SymbolInfoDouble(symbol, SYMBOL_ASK);
    symbol_info.bid = SymbolInfoDouble(symbol, SYMBOL_BID);
    symbol_info.point = SymbolInfoDouble(symbol, SYMBOL_POINT);
    symbol_info.digits = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
    symbol_info.spread = (int)SymbolInfoInteger(symbol, SYMBOL_SPREAD);
    symbol_info.filling_mode = 
      (ENUM_ORDER_TYPE_FILLING)SymbolInfoInteger(symbol, SYMBOL_FILLING_MODE);
    symbol_info.stops_level = (int)SymbolInfoInteger(symbol, SYMBOL_TRADE_STOPS_LEVEL);  
    
  }
  
  return is_exsit;
}