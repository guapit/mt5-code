#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

// 全局变量
string symbol = _Symbol;

// 程序运行开始执行一次
int OnInit()
  {
   // 初始化市场深度信息
   MarketBookAdd(symbol);
   return(INIT_SUCCEEDED);
  }

// 程序结束前执行一次
void OnDeinit(const int reason)
  {
   // 重置市场深度信息
   MarketBookRelease(symbol);
  }
// 价格每跳动(更新)一次就执行一次
void OnTick()
  {
    // 定义一个接受市场深度数据的结构体数组
    MqlBookInfo book_info[];
    // 获取市场深度数据,并写入到结构体中
    bool is_get = MarketBookGet(symbol, book_info);
    // 获取市场深度数据数组长度
    int len = ArraySize(book_info);
    printf("市场深度数据数组长度: %d", len);
    if(is_get == true)
    {
      for(int i=0; i<len; i++)
      {
        ENUM_BOOK_TYPE type = book_info[i].type;
        double price = book_info[i].price;
        long volume = book_info[i].volume;
        printf("订单方向: %s, 当前报价: %.5f, 成交量: %d",
              EnumToString(type),
              price,
              volume
              );
      }
    }
    else
    {
      printf("没有获取到市场深度行情数据.");
    }
    
  }

