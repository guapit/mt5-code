#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 创建数组
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    
    // 获得数组的长度
    int size = ArraySize(arr);
    
    // 遍历查询元素
    //while
    /*
    int index = 0;
    while(index < size)
    {
      Print("序号: " + string(index) + ", 元素值: " + string(arr[index]));
      index++;
    }
    */
    
    // for
    /*
    for(int i = 0; i < size; i++)
    {
      Print("序号: " + string(i) + ", 元素值: " + string(arr[i]));
    }
    */
    
    // 遍历过滤查询元素
    for(int i = 0; i < size; i++)
    {
      if(arr[i] % 2 == 1)
      {
        Print("序号: " + string(i) + ", 元素值: " + string(arr[i]));
      }
      
    }
    
    // 遍历修改元素
    for(int i = 0; i < size; i++)
    {
      if(arr[i] % 2 == 0)
      {
        arr[i] += 10;
        Print("序号: " + string(i) + ", 元素值: " + string(arr[i]));
      }
      
    }
    
  }