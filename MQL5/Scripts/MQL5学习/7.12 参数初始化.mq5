#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {  
    string str_1 = "小兔子乖乖";
    string str_2 = "把门开开";
    string str_3 = "大灰狼要进来";
    // 如果形参设置了默认值, 当调用时可以不写,会默认读取形参的缺失值
    // talk(str_1, str_2);
    // 如果实参有值,那么就读取实参的值
    // talk(str_1, str_2, str_3);
    // talk(str_1);
    
    string str_4 = "妈妈要回来";
    talk(str_1, str_2, str_4);
    
  }

// 带有默认值的形参后面只能跟同样带有默认值的形参
// 无默认值的形参靠前写, 有默认值形参靠右写
void talk(string str1, string str2="把门开开", string str3="妈妈要回来")
{
  Print(str1);
  Print(str2);
  Print(str3);
  if(str3 == "妈妈要回来")
  {
    Print("好的妈妈");
  }
  else
  {
    Print("不开就不开");
  }
}
