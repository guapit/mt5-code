#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
     // 指定货币对名称
     string sym = Symbol();
     
     // 衍生资产名
     string symbol_basis = SymbolInfoString(sym,SYMBOL_BASIS);
     
     // 交易品种分类
     string symbol_category = SymbolInfoString(sym, SYMBOL_CATEGORY);
     
     // 交易品种所属的国家
     string symbol_country = SymbolInfoString(sym, SYMBOL_COUNTRY);
     
     // 交易品种的经济部门
     string symbol_sector_name = SymbolInfoString(sym, SYMBOL_SECTOR_NAME);
     
     // 交易品种行业分支
     string symbol_industry_name = SymbolInfoString(sym, SYMBOL_INDUSTRY_NAME);
     
     // 交易品种基础货币
     string symbol_currency_base = SymbolInfoString(sym, SYMBOL_CURRENCY_BASE);
     
     // 利润计算货币名
     string symbol_currency_profit = SymbolInfoString(sym, SYMBOL_CURRENCY_PROFIT);
     
     // 预付款货币名
     string symbol_currency_magrin = SymbolInfoString(sym, SYMBOL_CURRENCY_MARGIN);
     
     // 当前报价银行名
     string bank = SymbolInfoString(sym, SYMBOL_BANK);
     
     // 交易品种描述
     string desc = SymbolInfoString(sym, SYMBOL_DESCRIPTION);
     
     // 交易品种所在的交易所名称
     string exchange = SymbolInfoString(sym, SYMBOL_EXCHANGE);
     
     // 自定义交易品种定价公式
     string formula = SymbolInfoString(sym, SYMBOL_FORMULA);
     
     // ISIN系统中交易品种的别名
     string symbol_isin = SymbolInfoString(sym, SYMBOL_ISIN);
     
     // 交易品种信息的网址
     string symbol_page = SymbolInfoString(sym, SYMBOL_PAGE);
     
     // 交易品种的查询路径
     string symbol_path = SymbolInfoString(sym, SYMBOL_PATH);
     
     printf("衍生资产名: %s \n" +
            "交易品种分类: %s \n" +
            "交易品种所属的国家: %s \n" +
            "交易品种的经济部门: %s \n" +
            "交易品种行业分支: %s \n" +
            "交易品种基础货币: %s \n" +
            "利润计算货币名: %s \n" +
            "预付款货币名: %s \n" +
            "报价银行名称: %s \n" +
            "交易品种描述 : %s \n" +
            "交易品种所在的交易所名称: %s \n" +
            "自定义交易品种定价公式: %s \n" +
            "ISIN系统中交易品种的别名: %s \n" +
            "交易品种信息的网址: %s \n" +
            "交易品种的查询路径: %s \n"
      ,
      symbol_basis,
      symbol_category,
      symbol_country,
      symbol_sector_name,
      symbol_industry_name,
      symbol_currency_base,
      symbol_currency_profit,
      symbol_currency_magrin,
      bank,
      desc,
      exchange,
      formula,
      symbol_isin,
      symbol_page,
      symbol_path
     );
  }

