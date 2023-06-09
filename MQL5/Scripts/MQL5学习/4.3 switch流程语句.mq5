#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

enum period {
  m1, // 0
  m5, // 1
  m10, // 2
  m15 // 3
};

void OnStart()
  {
    period p = m1;
    
    //--- 程序开始 ---//
    switch (p){
      case m1:
        Print("你选择的是 1分钟周期");
        break;
      case m5:
        Print("你选择的是 5分钟周期");
        break;
      case m10:
        Print("你选择的是 10分钟周期");
        break;
      default:
        Print("你选择的是 当前周期");
    }
    
    //--- 程序结束 ---//
    
    char clr = 'y';
    string selcet_color = "没有颜色";
    
    switch(clr) {
      case 'r':
        selcet_color = "红色";
        break;
      case 'g':
        selcet_color = "绿色";
        break;
      case 'y':
        selcet_color = "黄色";
        break;
      default:
        selcet_color = "白色";
    }
    Print("当前选择的颜色是: " + selcet_color);
  }