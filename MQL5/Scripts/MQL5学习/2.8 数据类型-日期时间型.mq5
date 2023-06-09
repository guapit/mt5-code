#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // datetime: 日期时间型
    // 如果日期完整, 时间默认为: 00:00:00
    // 如果时间完整, 日期默认为:当天的时间
    
    // 完整的日期型: 年.月.日 时:分:秒"
    datetime dt1 = D'2022.06.28 12:58:59';
    // Print("dt1的时间是: " + (string)dt1);
    
    // 只有日期, 小时,分,秒都是00
    datetime dt2 = D'2022.06.28';
    // Print("dt2的时间是: " + (string)dt2);
    
    // 只有时间,默认为当天的日期
    datetime dt3 = D'12:58:59';
    // Print("dt3的时间是: " + (string)dt3);
    
    // 只有日期和时, 分和秒默认为:00
    datetime dt4 = D'2022.06.28 13';
    // Print("dt4的时间是: " + (string)dt4);
    
    // 只有日期和时分,秒默认为00
    datetime dt5 = D'2022.06.28 13:28';
    Print("dt5的时间是: " + (string)dt5);
  }