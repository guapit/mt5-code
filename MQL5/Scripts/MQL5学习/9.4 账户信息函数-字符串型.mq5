#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 账户的名称
    string name = AccountInfoString(ACCOUNT_NAME);
    printf("账户的名称: %s",name);
    
    //交易服务器的名称
    string server = AccountInfoString(ACCOUNT_SERVER);
    printf("交易服务器的名称: %s",server);
    
    // 结算货币兑名称
    string currency = AccountInfoString(ACCOUNT_CURRENCY);
    printf("结算货币兑名称: %s",currency);
    
    // 经纪商的公司名称
    string company = AccountInfoString(ACCOUNT_COMPANY);
    printf("经纪商的公司名称: %s",company);
  }

