#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 主循环程序
    for(int i = 1; i <= 2; i++)
    {
      Print("老和尚开始讲故事, 第" + string(i) + "遍");
      //子循环程序
      for(int j = 0; j < 3; j++)
      {
        if (j == 0 )
        {
          Print("一个和尚挑水喝.");
        }
        else if (j == 1)
        {
          Print("两个和尚抬水喝.");
        }
        else if (j == 2)
        {
          Print("三个和尚没水喝.");
        }
      }
    }
  }