#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 多条件的流程语句
    
    //--- 程序开始 --- //
    double v_wo = 9.9;
    
    // 判断流程
    if (v_wo == 50.0)
    {
      Print("感谢hxd请我吃的KFC!");
    }
    else if (v_wo == 0.0)
    {
      Print("看样子我们的感情淡了T.T!");
    }
    else if (v_wo > 0.0 && v_wo < 50.0)
    {
      Print("就这么点钱,你也好意思!");
    }
    else
    {
      Print("hxd,你永远是我大哥!");
    }
    //--- 程序结束 --- //
  }