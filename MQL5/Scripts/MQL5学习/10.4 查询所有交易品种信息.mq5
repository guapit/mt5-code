#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"


void OnStart()
  {
    // 指定一个交易品种
    string sym = _Symbol;
    
    // 获取交易品种数量
    // selected: true, 表示只统计可见交易品种数量, false,统计所有交易品种数量
    int len = SymbolsTotal(false);
    printf("当前交易品种数量: %d", len);
    
    // 检测指定交易品种是否存在
    // is_custom: true 在自定义交易品种里查询是否存在, false,就在默认交易品种中查询
    string symbol = "HELLO"; bool is_custom = false;
    bool symbol_exist = SymbolExist(symbol, is_custom);
    printf("指定交易品种: %s, 是否存在: %d", symbol, symbol_exist);
    
    int total = SymbolsTotal(true);
    for(int i = 0; i < total; i++)
    {
      string symbol2 = SymbolName(i,true);
      //printf("当前序号: %d,交易品种: %s",i,symbol2);
      //printf("描述: %s",SymbolInfoString(symbol2,SYMBOL_DESCRIPTION));
      //printf("点差值: %d",SymbolInfoInteger(symbol2,SYMBOL_SPREAD));
      //printf("最小报价单位: %.5f", SymbolInfoDouble(symbol2,SYMBOL_POINT));
    }
    
    // 检测指定交易品种行情数据是否和交易服务器数据一致
    bool symbol_sync = SymbolIsSynchronized(sym);
    printf("当前行情数据是否和交易服务器数据一致: %d", symbol_sync);
    
    // 从交易窗口中添加或者隐藏指定交易品种
    // select: true,添加到可见窗口, false: 隐藏交易品种,如果交易品种图表窗口被打开,隐藏会失败
    bool symbol_select = SymbolSelect("SP500m",false);
    if(symbol_select == true)
    {
      printf("交易品种操作成功!");
    }
    else
    {
      printf("交易品种操作失败!");
    }
    
    // 1标准手 保证金占用比例
    double initial_margin = 0.0;
    double maintenance_margin = 0.0;
    SymbolInfoMarginRate(sym,ORDER_TYPE_BUY,initial_margin,maintenance_margin);
    printf("初始保证金比例: %.5f %%, 追加保证金比例: %.5f %%",initial_margin, maintenance_margin);
    
    // 判断交易品种指定周期是否能接受到行情
    datetime q_start_time; datetime q_stop_time;
    bool session_quote = SymbolInfoSessionQuote(sym,SUNDAY,0,q_start_time,q_stop_time);
    printf("指定周期是否可以接受行情: %d \n" +
           "行情开盘时间: %s \n" +
           "行情停盘时间: %s \n"
           ,
           session_quote,
           TimeToString(q_start_time),
           TimeToString(q_stop_time)
          );
          
     // 判断交易品种指定的周期是否可以交易
     datetime t_start_time; datetime t_stop_time;
     bool session_trade = SymbolInfoSessionTrade(sym,SUNDAY,0,t_start_time,t_stop_time);
     printf("指定周期是否可以交易: %d \n" +
           "交易开始时间: %s \n" +
           "交易停止时间: %s \n"
           ,
           session_trade,
           TimeToString(t_start_time),
           TimeToString(t_stop_time)
          );
     
     // 获取交易品种当前报价数据
     MqlTick tick;
     SymbolInfoTick(sym,tick);
     printf("当前货币: %s \n" +
            "最后报价时间: %s \n" +
            "当前做多价: %.5f \n" +
            "当前做空价: %.5f \n" +
            "最后交易价格: %.5f \n" +
            "当前成交量: %d \n" +
            "最后报价毫秒数: %d \n" +
            "报价标识: %d \n" +
            "更精准当前成交量: %.2f \n"
            ,
            symbol,
            TimeToString(tick.time),
            tick.ask,
            tick.bid,
            tick.last,
            tick.volume,
            tick.time_msc,
            tick.flags,
            tick.volume_real
     );
  }
