#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
   /*
    // 升序排列
    int arr[8] = {5, 4, 3, 6, 9, 7, 10 ,8};
    int size = ArraySize(arr);
    int insertIndex = 0; // 记录需要插入到有序列表的无序值的下标
    for(int i = 0; i < size; i++)
    {
      insertIndex = i; // 得到需要插入的新值的下标号
      while(insertIndex >= 1)
      {
        // 为新加入值重新排序有序列表
        if(arr[insertIndex - 1] > arr[insertIndex]) // 5 > 4
        {
          int temp = arr[insertIndex - 1]; // 5
          arr[insertIndex - 1] = arr[insertIndex]; // 4
          arr[insertIndex] = temp;
        }
        
        insertIndex --;
      }
      printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i]",
          i,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7]);
    }
    */
    
    // 降序排列
    int arr[8] = {5, 4, 3, 6, 9, 7, 10 ,8};
    int size = ArraySize(arr);
    int insertIndex = 0; // 记录需要插入到有序列表的无序值的下标
    for(int i = 0; i < size; i++)
    {
      insertIndex = i; // 得到需要插入的新值的下标号
      while(insertIndex >= 1)
      {
        // 为新加入值重新排序有序列表
        if(arr[insertIndex - 1] < arr[insertIndex]) // 5 > 4
        {
          int temp = arr[insertIndex - 1]; // 5
          arr[insertIndex - 1] = arr[insertIndex]; // 4
          arr[insertIndex] = temp;
        }
        
        insertIndex --;
      }
      printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i]",
          i,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7]);
    }
    
  }