
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart()
  { 
    // write(写入) -> create(创建)  创建一个对象并把数据存储到内存中
    int a = 10;
    // read(读取) 和 write(写入) -> set 修改数据权限
    a = 20;
    // read(读取) -> get 获取数据权限
    Print("a的数值: " + (string)a);
    // delete 删除权限
  }

