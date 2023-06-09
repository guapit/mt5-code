#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 程序执行入口
void OnStart()
  {
    int arr[] = {3,2,9,1,7,8,4,5,6};
    // 数组当做实参传入时,只需要写数组名称.
    //sort(arr);
    //ArrayPrint(arr);
    // 将排序数据输出到一个新的数组
    int out[];
    sort(arr,out);
    ArrayPrint(arr);
    ArrayPrint(out);
  }

// 当形参是数组的时候,需要加上[]
void sort(int &arr[], int &out_arr[])
{
  int size = ArraySize(arr);
  ArrayResize(out_arr,size);
  ArrayCopy(out_arr,arr);
  for(int i = 0; i < size; i++)
  {
     // 节流锁
     bool lock = false;
     for(int j = 0; j < size - 1; j++)
     {
         if(out_arr[j] > out_arr[j + 1])
         {
            int temp = out_arr[j];
            out_arr[j] = out_arr[j + 1];
            out_arr[j + 1] = temp; 
            lock = true;
         }   
     }
     if(lock == false) break;
  }
}