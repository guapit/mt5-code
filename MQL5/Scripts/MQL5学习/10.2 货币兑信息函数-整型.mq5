#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    string sym = _Symbol;
    
    // 交易品种所属的板块
    ENUM_SYMBOL_SECTOR sector = (ENUM_SYMBOL_SECTOR)SymbolInfoInteger(sym, SYMBOL_SECTOR);
    
    // 所属的行业
    int industry = (int)SymbolInfoInteger(sym, SYMBOL_INDUSTRY);
    
    // 判断是否是自定义的品种
    bool symbol_custom = SymbolInfoInteger(sym,SYMBOL_CUSTOM);
    
    //市场报价交易品种的背景颜色
    color symbol_bg_color = (color)SymbolInfoInteger(sym,SYMBOL_BACKGROUND_COLOR );
    
    // 市场报价的模式
    int chart_mode = (int)SymbolInfoInteger(sym, SYMBOL_CHART_MODE);
    
    // 检测交易品种是否存在
    bool symbol_exist = (bool)SymbolInfoInteger("HELLO",SYMBOL_EXIST);
    
    // 指定交易品种是否可以点击
    bool symbol_select = (bool)SymbolInfoInteger(sym,SYMBOL_SELECT);
    
    // 指定交易品种是否可见
    bool symbol_visible = (bool)SymbolInfoInteger("GBPUSD", SYMBOL_VISIBLE);
    
    // 总交易订单数
    long session_deals = SymbolInfoInteger(sym, SYMBOL_SESSION_DEALS);
    // 做多交易订单数
    long session_buy_orders = SymbolInfoInteger(sym, SYMBOL_SESSION_BUY_ORDERS);
    // 做空交易订单数
    long session_sell_orders = SymbolInfoInteger(sym, SYMBOL_SESSION_SELL_ORDERS);
    
    // 成交量
    long volume = SymbolInfoInteger(sym, SYMBOL_VOLUME);
    // 当日最大成交量
    long volume_high = SymbolInfoInteger(sym, SYMBOL_VOLUMEHIGH);
    // 当日最小成交量
    long volume_low =SymbolInfoInteger(sym, SYMBOL_VOLUMELOW);
    
    // 最后报价时间
    datetime symbol_time = (datetime)SymbolInfoInteger(sym, SYMBOL_TIME);
    
    // 最后报价的微秒数
    long symbol_time_msc = SymbolInfoInteger(sym, SYMBOL_TIME_MSC);
    
    // 小数点位数
    int symbol_digits = (int)SymbolInfoInteger(sym, SYMBOL_DIGITS);
    
    // 点差值
    int symbol_spread = (int)SymbolInfoInteger(sym, SYMBOL_SPREAD);
    
    // 是否存在点差
    bool symbol_spread_float = (bool) SymbolInfoInteger(sym, SYMBOL_SPREAD_FLOAT);
    
    // 市场深度最大的数量
    int ticks_bookdepth = (int)SymbolInfoInteger(sym, SYMBOL_TICKS_BOOKDEPTH);
    
    // 合约计算模式
    int calc_mode = (int)SymbolInfoInteger(sym, SYMBOL_TRADE_CALC_MODE);
    
    // 交易模式
    int trade_mode = (int)SymbolInfoInteger(sym, SYMBOL_TRADE_MODE);
    
    // 交易品种开盘时间 期货专用
    datetime start_time = (datetime)SymbolInfoInteger(sym, SYMBOL_START_TIME);
    // 交易品种收盘时间 期货专用
    datetime expiration_time = (datetime)SymbolInfoInteger(sym, SYMBOL_EXPIRATION_TIME);
    
    // 止损价格和当前报价的最小间隔点数
    int trade_stops_level = (int)SymbolInfoInteger(sym, SYMBOL_TRADE_STOPS_LEVEL);
    
    // 冻结订单的点位, 在指定范围以内不可以操作订单
    int trade_freeze_level = (int) SymbolInfoInteger(sym, SYMBOL_TRADE_FREEZE_LEVEL);
    
    // 订单执行模式
    int trade_exemode = (int) SymbolInfoInteger(sym, SYMBOL_TRADE_EXEMODE);
    
    // 手续费模式
    int swap_mode = (int) SymbolInfoInteger(sym, SYMBOL_SWAP_MODE);
    
    // 隔夜利息的一周的第几天
    int swap_rollover3days = (int) SymbolInfoInteger(sym, SYMBOL_SWAP_ROLLOVER3DAYS);
    
    // 对冲模式
    int margin_hedged_use_leg = (int) SymbolInfoInteger(sym, SYMBOL_MARGIN_HEDGED_USE_LEG);
    
    // 挂单到期模式
    int expiration_mode = (int) SymbolInfoInteger(sym, SYMBOL_EXPIRATION_MODE);
    
    // 订单执行模式
    int filling_mode = (int)SymbolInfoInteger(sym, SYMBOL_FILLING_MODE);
    
    // 下单模式表
    int order_mode = (int)SymbolInfoInteger(sym, SYMBOL_ORDER_MODE);
    
    // 订单止损止盈的模式
    int order_gtc_mode = (int) SymbolInfoInteger(sym, SYMBOL_ORDER_GTC_MODE);
    
    // 期权交易模式
    int option_mode = (int)SymbolInfoInteger(sym, SYMBOL_OPTION_MODE);
    
    // 期权交易权限
    int option_right = (int)SymbolInfoInteger(sym, SYMBOL_OPTION_RIGHT);
    
    printf("当前品种: %s \n" +
           "所属板块: %s \n" +
           "所属板块: %d \n" +
           "判断是否是自定义品种 %d \n" +
           "指定交易品种的背景颜色: %s \n" +
           "市场报价图表上的模式: %d \n" +
           "指定交易品种是否存在: %d \n" +
           "指定交易品种是否可以被点击: %d \n" +
           "指定交易品种是否可见: %d \n" +
           "指定交易品种的总订单数: %d \n" +
           "指定交易品种做多方向的订单数: %d \n" +
           "指定交易品种做空方向的订单数: %d \n" +
           "指定交易品种的成交量:%d \n" +
           "指定交易品种的最大成交量: %d \n" +
           "指定交易品种的最小成交量: %d \n" +
           "最后报价时间: %s \n" +
           "最后报价的微秒数: %d \n" +
           "指定品种小数点的位数: %d \n" +
           "指定品种的点差值: %d \n" +
           "指定品种是否存在点差: %d \n" +
           "市场深度最大数: %d \n" +
           "合约计算模式: %d \n" +
           "交易模式: %d \n" +
           "交易品种开盘时间: %s \n" +
           "交易品种收盘时间: %s \n" +
           "止损价格和当前报价的最小间隔点数: %d \n" +
           "冻结订单的点位: %d \n" +
           "订单执行模式: %d \n" +
           "手续费模式: %d \n" +
           "隔夜利息的一周的第几天: %d \n" +
           "对冲模式: %d \n" +
           "挂单到期模式: %d \n" +
           "订单执行模式: %d \n" +
           "下单模式表: %d \n" +
           "期权交易模式: %d \n" +
           "期权交易权限: %d \n"

          ,   
          sym,
          EnumToString(sector),
          industry,
          symbol_custom,
          ColorToString(symbol_bg_color),
          chart_mode,
          symbol_exist,
          symbol_select,
          symbol_visible,
          session_deals,
          session_buy_orders,
          session_sell_orders,
          volume,
          volume_high,
          volume_low,
          TimeToString(symbol_time),
          symbol_time_msc,
          symbol_digits,
          symbol_spread,
          symbol_spread_float,
          ticks_bookdepth,
          calc_mode,
          trade_mode,
          TimeToString(start_time),
          TimeToString(expiration_time),
          trade_stops_level,
          trade_freeze_level,
          trade_exemode,
          swap_mode,
          swap_rollover3days,
          margin_hedged_use_leg,
          expiration_mode,
          filling_mode,
          order_mode,
          order_gtc_mode,
          option_mode,
          option_right
          );
    
    
  }