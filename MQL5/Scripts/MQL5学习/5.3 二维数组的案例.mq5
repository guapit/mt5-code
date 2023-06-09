#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 案例1: 编程三角逃离货币名称组
    string symbols[2][3] = {
      {"EURUSD", "GBPUSD", "EURGBP"},
      {"EURUSD", "JPYUSD", "EURJPY"}
    };
    Print("获取第一组货币对名称: " + symbols[0][0] + "," + symbols[0][1] +
      ", " + symbols[0][2]);
    
    // 案例2: 将K线数据编成二维数组
    // o     h    l    c
	  // 1.1, 1.5, 1.0, 1.2
	  // 1.2, 1.6, 1.1, 1.3
	  // 1.3, 1.7, 1.2, 1.4
	  // 1.4, 1.8, 1.3, 1.5
	  
	  double k_line[][4] = {
	  // o     h    l    c
	    {1.1, 1.5, 1.0, 1.2}, // 0
	    {1.2, 1.6, 1.1, 1.3}, // 1
	    {1.3, 1.7, 1.2, 1.4}, // 2
	    {1.4, 1.8, 1.3, 1.5}  // 3
	  //  0    1    2    3
	  };
	  // 查询所有的收盘价
	  Print("所有收盘价的数据: " + k_line[0][3] + ", " + k_line[1][3] + ", " 
	       + k_line[2][3] + ", " + k_line[3][3]);

  }