#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

#include <Guapit/PositionInfo.mqh>

void OnStart()
  {
    // 查询所有定单信息
    int len = PositionsTotal();
    //for(int i=len -1 ; i>=0; i--)
    for(int i=0 ; i<len; i++)
    {
      PositionInfo pos_info;
      getPositionInfo(i, pos_info);
      printf("定单号: %d, 开仓时间: %s, 交易品种: %s, 开仓价格: %f, 开仓手数: %f, \n sl: %f, tp: %f,注释: %s",
        pos_info.ticket,
        (string)pos_info.dt,
        pos_info.symbol,
        pos_info.price,
        pos_info.volume,
        pos_info.sl,
        pos_info.tp,
        pos_info.comment
        );
    }
  }

