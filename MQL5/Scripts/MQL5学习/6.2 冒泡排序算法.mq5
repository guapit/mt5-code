#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 冒泡排序算法
    
    // 升序排列
    /* 
    int arr[9] = {3, 2, 9, 1, 7, 8, 4, 5, 6};
    int size = ArraySize(arr);
    // 主循环
    for(int i = 0; i < size; i++)
    {
      // 节流锁
      bool lock = false;
      // 子循环
      for(int j = 0; j < size - 1; j++)
      {
        if(arr[j] > arr[j + 1]) // 3 > 2
        {
          int temp = arr[j]; // 3
          arr[j] = arr[j + 1]; // 2
          arr[j + 1] = temp; // 3
          lock = true;
        }
        // printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
        //   j,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
       }
       
       if(lock == false) break;
       printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
          i,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
     }
     */
     
    // 降序排列
    int arr[9] = {2, 3, 9, 1, 7, 8, 4, 5, 6};
    int size = ArraySize(arr);
    // 主循环
    for(int i = 0; i < size; i++)
    {
      // 节流锁
      bool lock = false;
      // 子循环
      for(int j = 0; j < size - 1; j++)
      {
        if(arr[j] < arr[j + 1]) // 2 < 3
        {
          int temp = arr[j]; // 2
          arr[j] = arr[j + 1]; // 3
          arr[j + 1] = temp; // 2
          lock = true;
        }
        // printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
        //   j,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
       }
       
       if(lock == false) break;
       printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
          i,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
     }
  }