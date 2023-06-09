#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    datetime dt = D'20:31:00'; // 当前时间
    datetime dt_start = D'08:30:58'; // 交易开始时间
    datetime dt_stop = D'20:30:59'; // 交易结束时间
    bool c = getTradeTime(dt, dt_start, dt_stop);
    if(c == true)
    {
      Print("当前EA运行状态: 开工中...");
    }
    else
    {
      Print("当前EA运行状态: 停止中...");
    }
  }
  
// 时间限制函数  
bool getTradeTime(datetime dt, datetime start, datetime stop)
{
  // 找出所有能交易的条件时间
  MqlDateTime m_dt, m_start, m_stop;
  // MqlDateTime m_dt;
  // MqlDateTime m_start;
  // MqlDateTime m_stop;
  TimeToStruct(dt,m_dt);  // 解构当前时间
  TimeToStruct(start, m_start); // 解构开始时间
  TimeToStruct(stop, m_stop); // 解构 结束时间
  // 当前小时 > 开始小时 和 当前小时 < 结束时间
  if(m_dt.hour > m_start.hour && m_dt.hour < m_stop.hour)
  {
    return true;
  }
  // 当前小时 == 开始小时
  else if(m_dt.hour == m_start.hour)
  {
    // 当前分钟 > 开始分钟
    if(m_dt.min > m_start.min)
    {
      return true;
    }
    else if(m_dt.min == m_start.min)
    {
      if(m_dt.sec >= m_start.sec)
      {
        return true;
      }
      
    }
    
  }
  // 当前小时 == 结束小时
  else if(m_dt.hour == m_stop.hour)
  {
    if(m_dt.min < m_stop.min)
    {
      return true;
    }
    else if(m_dt.min == m_stop.min)
    {
      if(m_dt.sec <= m_stop.sec)
      {
        return true;
      }
      
    }
  }

  return false;
}
  

