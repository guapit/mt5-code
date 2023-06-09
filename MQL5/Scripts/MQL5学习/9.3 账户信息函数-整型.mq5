#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 帐号ID
    // long id = AccountInfoInteger(ACCOUNT_LOGIN);
    int id = (int)AccountInfoInteger(ACCOUNT_LOGIN);
    printf("账户的ID: %d", id);
    
    // ENUM_ACCOUNT_TRADE_MODE trade_mode =  AccountInfoInteger(ACCOUNT_TRADE_MODE);
    int trade_mode = (int)AccountInfoInteger(ACCOUNT_TRADE_MODE);
    printf("当前账户的类型: %d",trade_mode);
    string trade_mode_str = "";
    switch(trade_mode)
    {
      case 1:
        trade_mode_str = "竞争账户";break;
      case 2:
        trade_mode_str = "真实账户";break;
      default:
        trade_mode_str = "模拟账户";
     }
     printf("当前账户类型: %d %s",trade_mode, trade_mode_str);
     
     // 当前杠杆倍数
     int leverage = (int)AccountInfoInteger(ACCOUNT_LEVERAGE);
     printf("当前账户杠杆倍数: %d 倍",leverage);
     
     // 最大持仓的手数
     int limit_orders = (int)AccountInfoInteger(ACCOUNT_LIMIT_ORDERS);
     printf("最大持仓的手数: %d 手",limit_orders);
     
     // 保证金计算模式
     int so_mode = (int)AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE);
     printf("保证金计算模式: %d ",so_mode);
     
     // 是否允许算法交易
     bool trade_allowed = AccountInfoInteger(ACCOUNT_TRADE_ALLOWED);
     printf("是否允许算法交易: %d ",trade_allowed);
     
     // 是否允许EA交易
     bool trade_expert = AccountInfoInteger(ACCOUNT_TRADE_EXPERT);
     printf("是否允许EA交易: %d ",trade_expert);
     
     // 账户交易计算模式
     int margin_mode = (int)AccountInfoInteger(ACCOUNT_MARGIN_MODE);
     printf("账户交易计算模式: %d ",margin_mode);
     
     // 当前账户的小数点位数
     int digits = (int)AccountInfoInteger(ACCOUNT_CURRENCY_DIGITS);
     printf("当前账户的小数点位数: %d ",digits);
     // 操作平仓的排序规则
     bool fifo_close = (bool)AccountInfoInteger(ACCOUNT_FIFO_CLOSE);
     printf("操作平仓的排序规则: %d ",fifo_close);
     
  }
