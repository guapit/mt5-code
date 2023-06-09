#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    /*
    // 升序排序
    
    int arr[] = {3,2,9,1,7,8,5,6,4};
    int size = ArraySize(arr);
    //主循环
    for(int i = 0; i < size - 1; i++)
    {
      // 子循环
      // 从下一个元素开始到结束中，查询并找到最小值的下标号
      int min_index = i + 1;
      for(int j = i + 1; j < size - 1; j++)
      {
        if(arr[min_index] > arr[j + 1]) // 9 > 1
        {
         // 获得最小值的下标序号
          min_index = j + 1; // 3
        }
      }
      // 当前元素值 和 剩下的元素中最小值进行比较，并对位置进行对调
      if(arr[i] > arr[min_index])
      {
        int temp = arr[i]; // 保存当前元素原始值
        arr[i] = arr[min_index]; // 1
        arr[min_index] = temp;  // 3
      }
      
      printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
          i,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
    }
    */ 
    
    // 降序排序
    
    int arr[] = {3,2,9,1,7,8,5,6,4};
    int size = ArraySize(arr);
    //主循环
    for(int i = 0; i < size - 1; i++)
    {
      // 子循环
      // 从下一个元素开始到结束中，查询并找到最小值的下标号
      int min_index = i + 1;
      for(int j = i + 1; j < size - 1; j++)
      {
        if(arr[min_index] < arr[j + 1]) // 9 > 1
        {
         // 获得最小值的下标序号
          min_index = j + 1; // 3
        }
      }
      // 当前元素值 和 剩下的元素中最小值进行比较，并对位置进行对调
      if(arr[i] < arr[min_index])
      {
        int temp = arr[i]; // 保存当前元素原始值
        arr[i] = arr[min_index]; // 1
        arr[min_index] = temp;  // 3
      }
      
      printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
          i,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
    }
  }