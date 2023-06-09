#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  { 
    // 获得服务器时间
    datetime dt = TimeCurrent();
    // 将服务器的时间结构到结构体中
    MqlDateTime mdt;
    TimeToStruct(dt, mdt);
    
    printf("当前服务的时间: %d年%s月%s日 %s:%s:%s %s, 今年已经过去 %d天",
      mdt.year, // 年
      IntegerToString(mdt.mon,2,'0'), // 月
      IntegerToString(mdt.day,2,'0'), // 日
      IntegerToString(mdt.hour,2,'0'), // 小时
      IntegerToString(mdt.min,2,'0'),// 分钟
      IntegerToString(mdt.sec,2,'0'), // 秒数
      getWeek(mdt.day_of_week), // 周几
      mdt.day_of_year // 今年过去多少天
    );
    /*
    string str = IntegerToString(8,2,'0');
    Print(str);
    */
  }
  
// 将星期数据转换成中文
string getWeek(int day_of_week)
{
  string week_str = "";
  switch(day_of_week)
  {
    case 1: 
      week_str = "星期一";break;
    case 2: 
      week_str = "星期二";break;
    case 3: 
      week_str = "星期三";break;
    case 4: 
      week_str = "星期四";break;
    case 5: 
      week_str = "星期五";break;
    case 6: 
      week_str = "星期六";break;
    default:
      week_str = "星期日";
  }
  return week_str;
}

