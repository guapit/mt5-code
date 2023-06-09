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
    // 指定交易品种
    string sym = _Symbol;
    SymbolInfo sym_info;
    bool is_exits = getSymbolInfo(sym, sym_info);
    if(is_exits)
    {
      // 3 创建和初始化交易请求体和返回响应结构体
      MqlTradeRequest request = {};
      // MqlTradeRequest request2;
      // ZeroMemory(request2);
      MqlTradeResult result = {};
      // MqlTradeRequest result2;
      // ZeroMemory(result);
      
      // 4 填写请求交易信息
      /*
        执行 1
        方向 1
        交易品种2
        交易量 3
        价格 3
        止损水平 3
        盈利水平 3
        误差 3
        类型 1
        EA识别码 2
        注释 2
        _filling类型 1

      */
      // 4.1 请求设置相关的属性
      request.action = TRADE_ACTION_DEAL;
      request.type = ORDER_TYPE_SELL;
      request.type_filling = sym_info.filling_mode;
      
      // 4.2 订单设置相关属性
      request.symbol = sym;
      request.comment = "Sell方向订单";
      request.magic = 8199231;
      
      // 4.3 价格相关属性
      request.volume = 0.1;
      request.price = sym_info.ask;
      request.sl = 0.0;
      request.tp = 0.0;
      request.deviation = 5;
      // 请求发送成功
      if(OrderSend(request, result))
      {
        printf("状态码:%d, 订单号: %d, 开仓价: %.5f, 下单手数: %.2f, 交易返回注释: %s"
                 ,
                 result.retcode,
                 result.deal,
                 result.price,
                 result.volume,
                 result.comment
               );
      }
      else
      {
        printf("发送交易请求失败,错误代码: %d", GetLastError());
        // 重置错误代码
        ResetLastError();
      }
      
    }
    // 如果交易品种不存在就报错
    else
    {
      printf("交易品种: %s,无效!",sym);
    }
  }

// 2. 获取指定交易品种的信息
bool getSymbolInfo(const string symbol, SymbolInfo & symbol_info)
{
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