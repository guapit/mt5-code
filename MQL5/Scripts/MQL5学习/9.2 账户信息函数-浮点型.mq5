#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  { 
    // 获取账户的余额
    double balance = AccountInfoDouble(ACCOUNT_BALANCE);
    printf("当前账户余额: %.2f", balance);
    // 账户的穿仓额
    double credit = AccountInfoDouble(ACCOUNT_CREDIT);
    printf("当前账户穿仓额: %.2f", credit);
    // 浮动盈亏
    double profit = AccountInfoDouble(ACCOUNT_PROFIT);
    printf("浮动盈亏: %.2f", profit);
    // 净值
    double equity = AccountInfoDouble(ACCOUNT_EQUITY);
    printf("账户净值: %.2f", equity);
    
    // 已经使用的保证金(预付款)
    double margin = AccountInfoDouble(ACCOUNT_MARGIN);
    printf("账户预付款: %.2f", margin);
    
    // 未使用的预付款
    double margin_free = AccountInfoDouble(ACCOUNT_MARGIN_FREE);
    printf("账户可用预付款: %.2f", margin_free);
    
    // 维持预付款的比例
    double level = AccountInfoDouble(ACCOUNT_MARGIN_LEVEL);
    printf("账户维持预付款的比例: %.2f %%", level);
    
    // 追加保证金比例
    double margin_so_call = AccountInfoDouble(ACCOUNT_MARGIN_SO_CALL);
    printf("追加保证金的比例: %.2f %%", margin_so_call);
    
    // 爆仓比例
    double so_so = AccountInfoDouble(ACCOUNT_MARGIN_SO_SO);
    printf("爆仓比例: %.2f %%", so_so);
    
    // 账户的初始预付款
    double initial = AccountInfoDouble(ACCOUNT_MARGIN_INITIAL); 
    printf("账户的初始预付款: %.2f", initial);
    
    // 账户维持预付款
    double maintenance = AccountInfoDouble(ACCOUNT_MARGIN_MAINTENANCE);
    printf("账户的初始预付款: %.2f", maintenance);
    
    // 账户活动资金
    double assets = AccountInfoDouble(ACCOUNT_ASSETS);
    printf("账户活动资金: %.2f", maintenance);
      
    // 账户锁定保证金
    double blocked = AccountInfoDouble(ACCOUNT_COMMISSION_BLOCKED);
    printf("账户锁定保证金: %.2f", blocked);
   
  }
