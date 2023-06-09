#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
{
    string sym = _Symbol;
   MqlBookInfo priceArray[];
   bool is_add = MarketBookAdd(sym);
   printf("is_add: %d",is_add);
   MarketBookRelease(sym);
   bool shendu=MarketBookGet(sym,priceArray);
   if(shendu)
     {
      int size=ArraySize(priceArray);
      printf("交易品种: %s",sym);
      for(int i=0;i<size;i++)
        {
         printf("订单方向: %d, 市场报价: %.5f, 成交量: %d,",
                priceArray[i].type,
                priceArray[i].price,
                priceArray[i].volume);
        }
     }
   else
     {
      Print("没有找到指定交易品种市场深度信息");
     }
    // 重置市场深度
    MarketBookRelease(sym);
}