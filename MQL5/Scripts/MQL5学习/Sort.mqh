
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"

//+------------------------------------------------------------------+
//|      十大经典算法                                                |
//+------------------------------------------------------------------+
/*
1. 冒泡排序 bubbleSort
2. 选择排序 selectSort
3. 双向选择排序 selectSortOP
3. 插入排序 insertSort
5. 折半插入排序 insertSortBS
6. 快速排序 quickSort
6.2 二路快速排序 quickSort2
6.3 三路快速排序 quickSort3
7. 希尔排序 shellSort
7.2 希尔排序第二种方法 shellSort2
8 堆排序 heapSort
9 归并排序 mergeSort
10 归并递归排序 mergeSort2
11 计数排序 countingSort
12 桶排序 bucketSort
13 基数排序 radixSort
参考: 
https://blog.csdn.net/qq_43794633/article/details/121612149
https://zhuanlan.zhihu.com/p/446918184
*/

// 私有函数
template <typename L, typename R>
void swap(L &left, R & right)
{
  L temp = left;
  left = right;
  right = temp;
}

//--- 查询极限值模板
template <typename T,typename R>
void _select(T &t1[], R &ret,bool select=false)
{
  int size = ArraySize(t1);
  if(size > 0)
  {
    R temp = t1[0];
    if(select == false)
    {
      for(int i=0; i < ArraySize(t1); i++)
      {
        if(t1[i] > temp)temp = t1[i];
      }
      ret = temp;
    }
    else
    {
      if(select == true)
      {
        for(int i=0; i < ArraySize(t1); i++)
        {
          if(t1[i] < temp)temp = t1[i];
        }
        ret = temp;
      }
    }
  }
  
}
//--- 查询最大值 int
int max(int &arr[])
{
  int get = 0;
  _select(arr,get,false);
  return get;
}
//--- 查询最大值 double
double max(double &arr[])
{
  double get = 0.0;
  _select(arr,get,false);
  return get;
}
//--- 查询最小值 int
int min(int &arr[])
{
  int get = 0;
  _select(arr,get,true);
  return get;
}
//--- 查询最小值 double
double min(double &arr[])
{
  double get = 0.0;
  _select(arr,get,true);
  return get;
}

/*
二分查找法查询需要的值
*/

template <typename T, typename V>
bool _search(T &arr[], const V val)
{
// int 和 double才可以查询
  if(typename(arr) == "int" || typename(arr) == "double")
  {
    int left = 0;
    int right = ArraySize(arr) - 1;
    while(left <= right)
    {
      int mid = (left + right) / 2;
      if(arr[mid] == val) return true;
      else if(arr[mid] > val) right = mid - 1;
      else left = mid + 1;
    }
  }
  return false;

}

bool search(int &arr[], const int value)
{
  return _search(arr,value);
}

bool search(double &arr[], const double value)
{
  return _search(arr,value);
}

/*
  冒泡排序算法
  相邻的两个元素进行比较
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template <typename T>
void bubbleSort(T & arr[],const bool seq=true)
{
  if(typename(arr) == "int" || typename(arr) == "double")
  {
    int size = ArraySize(arr);
    if(seq)
    for(int i=0; i <size ; i++)
    {
      bool lock = false;
      for(int j=0; j < size - 1; j++)
      {
        if (arr[j] > arr[j + 1])
        {
          swap(arr[j], arr[j + 1]);
          lock = true;
        }
      
      }
      if(lock == false) break;
    }
    else
    for(int i=0; i <size ; i++)
    {
      bool lock = false;
      for(int j=0; j < size - 1; j++)
      {
        if (arr[j] < arr[j + 1])
        {
          swap(arr[j], arr[j + 1]);
          lock = true;
        }
      
      }
      if(lock == false) break;
    }
  }
}


/*
  选择排序算法
  当前元素和剩下的无序列表中的极限值进行位置交换
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template <typename T>
void selectSort(T & arr[],const bool seq=true)
{
  if(typename(arr) == "int" || typename(arr) == "double")
  {
    int size = ArraySize(arr);
    if(seq)
    for(int i=0; i<size - 1; i++)
    {
      int insertIndex = i + 1;
      int j = i + 1;
      while (j < size - 1)
      {
        if(arr[insertIndex] > arr[j + 1])
        {
          insertIndex = j + 1;
        }
        j++;
      }
      if(arr[i] > arr[insertIndex]) swap(arr[i], arr[insertIndex]
    }
    else
    for(int i=0; i<size - 1; i++)
    {
      int insertIndex = i + 1;
      int j = i + 1;
      while (j < size - 1)
      {
        if(arr[insertIndex] < arr[j + 1])
        {
          insertIndex = j + 1;
        }
        j++;
      }
      if(arr[i] < arr[insertIndex]) swap(arr[i], arr[insertIndex]
    }
  }
  
}

/*
  双向选择排序算法
  当前元素和剩下的无序列表中的极限值进行位置交换
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template <typename T>
void selectSortOP(T & arr[],const bool seq=true)
{
  if(typename(arr) == "int" || typename(arr) == "double")
  {
    int size = ArraySize(arr);
    int max,min;
    if(seq)
    {
      int low = 0; int high = size - 1;
      while(low <= high)
      {
        max = low; min = low;
        for(int i = low + 1; i <= high; i++)
        {
          if(arr[i] < arr[min]) min = i;
          if(arr[i] > arr[max]) max = i;
        }
        swap(arr[low], arr[min]);
        if(max == low)max = min;
        swap(arr[high],arr[max]);
        high--;
        low++;
      }
    } 
    else
    {
      int low = 0; int high = size - 1;
      while(low <= high)
      {
        max = low; min = low;
        for(int i = low + 1; i <= high; i++)
        {
          if(arr[i] > arr[min]) min = i;
          if(arr[i] < arr[max]) max = i;
        }
        swap(arr[low], arr[min]);
        if(max == low)max = min;
        swap(arr[high],arr[max]);
        high--;
        low++;
      }
    }
  }
}
  
  

/*
  插入排序算法
  每产生一个新的无序元素就和前面排序好的元素进行重新排序
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template <typename T>
void insertSort(T & arr[],const bool seq=true)
{
  if(typename(arr) == "int" || typename(arr) == "double")
  {
    int size = ArraySize(arr);
    int insertIndex = 0;
    if(seq)
    {
      for(int i=0; i<size;i++)
      {
        insertIndex = i;
        while(insertIndex >= 1)
        {
          if(arr[insertIndex - 1] > arr[insertIndex])
          swap(arr[insertIndex - 1], arr[insertIndex]);
          insertIndex--;
        }
      }
    }
    else
    {
      for(int i=0; i<size;i++)
      {
        insertIndex = i;
        while(insertIndex >= 1)
        {
          if(arr[insertIndex - 1] < arr[insertIndex])
          swap(arr[insertIndex - 1], arr[insertIndex]);
          insertIndex--;
        }
      }
    }
    
  }
  
}

/*
  折半插入排序算法
  每产生一个新的无序元素就和前面排序好的元素进行重新排序
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/
template <typename T>
void insertSortBS(T & arr[],const bool seq=true)
{
  if(typename(arr) == "int" || typename(arr) == "double")
  {
    int size = ArraySize(arr);
    int insertIndex = 0;
    if(seq)
    {
      for(int i = 1; i < size ; i++)
      {
        int left = 0;
        int right = i;
        int temp = arr[i];
        while(left < right)
        {
         int mid = left + ((right - left) >> 1);
         if(arr[mid] > temp) right = mid;
         else left = mid + 1;
        }
        for(int j = i; j > left; j--) arr[j] = arr[j - 1];
        arr[left] = temp;
      }
    }
    else
    {
      for(int i = 1; i < size ; i++)
      {
        int left = 0;
        int right = i;
        int temp = arr[i];
        while(left < right)
        {
         int mid = left + ((right - left) >> 1);
         if(arr[mid] < temp) right = mid;
         else left = mid + 1;
        }
        for(int j = i; j > left; j--) arr[j] = arr[j - 1];
        arr[left] = temp;
      }
    }
    
  }
  
}


/*
  快速排序算法
  以一个基数为标准, 从左边 和右边合拢排序
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/
template <typename T1>
void quickSort(T1 &arr[], const bool seq = true)
{
  int len = ArraySize(arr);
  _partition(arr,0,len - 1,seq);
  
  
  
}

template <typename T>
void _partition(T &arr[], int l, int r,bool seq = true)
{
  if (l >= r) return;
  int index = l + 1;
  if(seq)
  {
    
    int key = arr[l];
    int low = l;
    int high = r;
    
    while(l<r)
    {
      while(l<r && arr[r] >= key)r--;
      arr[l] = arr[r];
      while(l<r && arr[l] <= key)l++;
      arr[r] = arr[l];
    }
    arr[r] = key;
    _partition(arr,low,l - 1,seq);
    _partition(arr,l + 1,high,seq);
    
  }
  else
  {
    int key = arr[l];
    int low = l;
    int high = r;
    
    while(l<r)
    {
      while(l<r && arr[r] < key)r--;
      arr[l] = arr[r];
      while(l<r && arr[l] > key)l++;
      arr[r] = arr[l];
    }
    arr[r] = key;
    _partition(arr,low,l - 1,seq);
    _partition(arr,l + 1,high,seq);
  }
  
}

template <typename T>
void _quickSortInternal(T & arr[], int l, int r, bool seq = true)
{
  if(l > r) return;
  int p = _partition(arr,l,r,seq);
  _quickSortInternal(arr,l,p - 1,seq);
  _quickSortInternal(arr,p + 1,r,seq);
}

/*
  二路快速排序算法
  以一个基数为标准, 从左边 和右边合拢排序
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template <typename T1>
void quickSort2(T1 &arr[], const bool seq = true)
{
    int size = ArraySize(arr);
    _quickSortInternal2(arr,0,size - 1,seq);

}

template <typename T>
int _partition2(T &arr[], int l, int r,bool seq = true)
{
  int temp = arr[l];
  int i = l + 1;
  int j = r;
  if(seq)
  while(true)
  {
    while(i<=j && arr[i] < temp) i++;
    while(i<=j && arr[j] > temp) j--;
    if(i>=j) break;
    swap(arr[i],arr[j]);
    i++; j--;
    return j;
  }
  else
  {
    while(true)
    {
      while(i<=j && arr[i] > temp) i++;
      while(i<=j && arr[j] < temp) j--;
      if(i>=j) break;
      swap(arr[i],arr[j]);
      i++; j--;
      return j;
    }
  }
  swap(arr[l],arr[j]);
  return j;
}


template <typename T>
void _quickSortInternal2(T & arr[], int l, int r, bool seq = true)
{
  if(l > r) return;
  int p = _partition2(arr,l,r,seq);
  _quickSortInternal2(arr,l,p - 1,seq);
  _quickSortInternal2(arr,p + 1,r,seq);
}

/*
  三路快速排序算法
  以一个基数为标准, 从左边 和右边合拢排序
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template <typename T1>
void quickSort3(T1 &arr[], const bool seq = true)
{
    int size = ArraySize(arr);
    _quickSortInternal3(arr,0,size - 1,seq);

}

template <typename T>
int _partition3(T &arr[], int l, int r,bool seq = true)
{
  int temp = arr[l];
  int i = l + 1;
  int j = r;
  if(seq)
  while(true)
  {
    while(i<=j && arr[i] < temp) i++;
    while(i<=j && arr[j] > temp) j--;
    if(i>=j) break;
    swap(arr[i],arr[j]);
    i++; j--;
    return j;
  }
  else
  {
    while(true)
    {
      while(i<=j && arr[i] > temp) i++;
      while(i<=j && arr[j] < temp) j--;
      if(i>=j) break;
      swap(arr[i],arr[j]);
      i++; j--;
      return j;
    }
  }
  swap(arr[l],arr[j]);
  return j;
}


template <typename T>
void _quickSortInternal3(T & arr[], int l, int r, bool seq = true)
{
  if(l > r) return;
  int temp = arr[l];
  int lt = l;
  int i =lt + 1;
  int gt = r + 1;
  if(seq)
  {
    while(i < gt)
    {
      if(arr[i] < temp)
      {
        swap(arr[i],arr[lt + 1]);
        i++; lt++;
      }
      else if (arr[i] > temp)
      {
        swap(arr[i],arr[gt - 1]);
        gt--;
      }
      else i++;
    }
    swap(arr[l],arr[lt]);
    _quickSortInternal3(arr,l,lt - 1,seq);
    _quickSortInternal3(arr,gt,r,seq);
  }
  else
  {
    while(i < gt)
    {
      if(arr[i] > temp)
      {
        swap(arr[i],arr[lt + 1]);
        i++; lt++;
      }
      else if (arr[i] < temp)
      {
        swap(arr[i],arr[gt - 1]);
        gt--;
      }
      else i++;
    }
    swap(arr[l],arr[lt]);
    _quickSortInternal3(arr,l,lt - 1,seq);
    _quickSortInternal3(arr,gt,r,seq);
  }
}


/*
  希尔排序算法
  以二分之一分递归分割数组
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template <typename T1>
void shellSort(T1 &arr[], const bool seq = true)
{

    int gap,i,j,temp;
    int size = ArraySize(arr);
    if(seq)
    {
      gap = size >> 1;
      while(gap >= 1)
      {
        for(i=gap; i< size; i++) // gap 4
        {
          temp = arr[i];
          j = i - gap; // 4 - 4 = 0
          while(j >= 0 && arr[j] > temp)
          {
            arr[j + gap] = arr[j];
            j -= gap;
          }
          arr[j + gap] = temp;
        }
        gap >>= 1;
      }
    }
    else
    {
      gap = size >> 1;
      while(gap >= 1)
      {
        for(i=gap; i< size; i++) // gap 4
        {
          temp = arr[i];
          j = i - gap; // 4 - 4 = 0
          while(j >= 0 && arr[j] < temp)
          {
            arr[j + gap] = arr[j];
            j -= gap;
          }
          arr[j + gap] = temp;
        }
        gap >>= 1;
      }
    }
  
}

template <typename T1>
void shellSort2(T1 &arr[], const bool seq = true)
{
  if(typename(arr) == "int" || typename(arr) == "double")
  {
    int gap,i,j,temp;
    int size = ArraySize(arr);
    if(seq)
    {
      gap = size >> 1;
      while(gap >= 1)
      {
        for(i=gap; i< size; i++) // gap 4
        {
         for(j = i; j - gap >= 0; j -= gap)
         {
          if(arr[j - gap] < arr[j]) break;
          if(arr[j - gap] > arr[j]) swap(arr[j],arr[j - gap]);
         }
        }
        gap >>= 1;
      }
    }
    else
    {
      gap = size >> 1;
      while(gap >= 1)
      {
        for(i=gap; i< size; i++) // gap 4
        {
         for(j = i; j - gap >= 0; j -= gap)
         {
          if(arr[j - gap] > arr[j]) break;
          if(arr[j - gap] < arr[j]) swap(arr[j],arr[j - gap]);
         }
        }
        gap >>= 1;
      }
    }
  }
}


/*
  堆排序算法
  以二分之一分递归分割数组
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/


template <typename T>
void heapSort(T &arr[],const bool seq = true)
{
  int len = ArraySize(arr);
  int start = len;
  int end = len - 1;
  
  while(start >= 0)
  {
    big_endian(arr,start,end,seq);
    start -= 1;
  }
  while(end > 0)
  {
    swap(arr[0],arr[end]);
    big_endian(arr,0,end -1,seq);
    end -= 1;
  }
}

template <typename T>
void big_endian(T &arr[], int start, int end, const bool seq = true)
{
  int root = start;
  int child = root * 2 + 1;
  if(seq)
  while(child <= end)
  {
    if(child + 1 <= end && arr[child] < arr[child + 1])
    {
      child += 1;
    }
    if(arr[root] < arr[child])
    {
      swap(arr[root],arr[child]);
      root = child;
      child = root * 2 + 1;
    }
    else break;
  }
  else
  while(child <= end)
  {
    if(child + 1 <= end && arr[child] > arr[child + 1])
    {
      child += 1;
    }
    if(arr[root] > arr[child])
    {
      swap(arr[root],arr[child]);
      root = child;
      child = root * 2 + 1;
    }
    else break;
  }
  
}

/*
  归并排序算法
  以二分之一分递归分割数组
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/

template<typename T> 
void mergeSort(T &arr[], const bool seq = true) {
    int len = ArraySize(arr);
    T b[];
    ArrayResize(b,len);
    if(seq)
    for (int seg = 1; seg < len; seg += seg) {
        for (int start = 0; start < len; start += seg + seg) {
            int low = start, mid = merge_min(start + seg, len), high = merge_min(start + seg + seg, len);
            int k = low;
            int start1 = low, end1 = mid;
            int start2 = mid, end2 = high;
            while (start1 < end1 && start2 < end2)
                b[k++] = arr[start1] < arr[start2] ? arr[start1++] : arr[start2++];
            while (start1 < end1)
                b[k++] = arr[start1++];
            while (start2 < end2)
                b[k++] = arr[start2++];
        } 
        T temp[];
        ArrayResize(temp,len);
        ArrayCopy(temp,arr);
        ArrayCopy(arr,b);
        ArrayCopy(b,temp);
    }
    else
    for (int seg = 1; seg < len; seg += seg) {
        for (int start = 0; start < len; start += seg + seg) {
            int low = start, mid = merge_min(start + seg, len), high = merge_min(start + seg + seg, len);
            int k = low;
            int start1 = low, end1 = mid;
            int start2 = mid, end2 = high;
            while (start1 < end1 && start2 < end2)
                b[k++] = arr[start1] > arr[start2] ? arr[start1++] : arr[start2++];
            while (start1 < end1)
                b[k++] = arr[start1++];
            while (start2 < end2)
                b[k++] = arr[start2++];
        } 
        T temp[];
        ArrayResize(temp,len);
        ArrayCopy(temp,arr);
        ArrayCopy(arr,b);
        ArrayCopy(b,temp);
    }
    //if (a != arr) {
    //    for (int i = 0; i < len; i++)
    //        b[i] = a[i];
    //    b = a;
    //}
}

/*
  归并递归排序算法
  以二分之一分递归分割数组
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/
template<typename T>
void mergeSort2(T &arr[], const bool seq = true) 
{
    int len = ArraySize(arr);
    T reg[];
    ArrayResize(reg,len);
    _merge_sort_recursive(arr, reg, 0, len - 1,seq);
}

template<typename T>
void _merge_sort_recursive(T &arr[], T &reg[], int start, int end,bool seq = true) {
    if (start >= end)
        return;
    int len = end - start, mid = (len >> 1) + start;
    int start1 = start, end1 = mid;
    int start2 = mid + 1, end2 = end;
    _merge_sort_recursive(arr, reg, start1, end1,seq);
    _merge_sort_recursive(arr, reg, start2, end2,seq);
    int k = start;
    if(seq)
    {
      while (start1 <= end1 && start2 <= end2)
          reg[k++] = arr[start1] < arr[start2] ? arr[start1++] : arr[start2++];
      while (start1 <= end1)
          reg[k++] = arr[start1++];
      while (start2 <= end2)
          reg[k++] = arr[start2++];
      for (k = start; k <= end; k++)
          arr[k] = reg[k];
    }
    else
    {
      while (start1 <= end1 && start2 <= end2)
          reg[k++] = arr[start1] > arr[start2] ? arr[start1++] : arr[start2++];
      while (start1 <= end1)
          reg[k++] = arr[start1++];
      while (start2 <= end2)
          reg[k++] = arr[start2++];
      for (k = start; k <= end; k++)
          arr[k] = reg[k];
    }
    
}


/*
template < typename T>
void mergeSort(T &arr[],const bool seq = true)
{
  int len = ArraySize(arr);
  if(len == 1) return;
  int mid = len >> 1;
  T left[]; T right[]; T result[]; T l_copy[]; T r_copy;
  // 重新分配递归大小
  ArrayResize(left,mid);
  ArrayCopy(left,arr,0,0,mid);
  
  
  
  // 递归分配二叉树
  
  if(len % 2 == 1)
  {
    ArrayResize(right,mid + 1);
    ArrayCopy(right,arr,0,mid,mid + 1);
  }
  else
  {
    ArrayResize(right,mid);
    ArrayCopy(right,arr,0,mid,mid);
  }
//  Print("左边的序号: " + ArraySize(left));
//  Print("右边的序号: " + ArraySize(right));
//  
//  Print("左边的最后数: " + left[ArraySize(left) - 1]);
//  Print("右边的最后数: " + right[ArraySize(right) - 1]);
  mergeSort(left);
  mergeSort(right);
  _merge(left, right,result);
  ArrayCopy(arr,result,0,0,len - 1);
  printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
      0,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
  
}

template < typename T>
void _merge(T &left[], T &right[],T &out_array[])
{
  T result[];
  int left_len = ArraySize(left);
  int right_len = ArraySize(right); 
  int len = 0;
  while(left_len > 0 && right_len > 0)
  {
    //Print("左边的序号: " + left_len);
    //Print("右边的序号: " + right_len);
    if(left[left_len - 1] <= right[right_len - 1]) //  左值小于边值
    {
      // 添加数组长度
      len = ArraySize(result);
      ArrayResize(result,len + 1);
      ArrayInsert(result,left,len - 1,0,1);
    }
    else
    {
      // 添加数组长度
      len = ArraySize(result);
      ArrayResize(result,len + 1);
      ArrayInsert(result,right,len - 1,0,1);
    }
    left_len--; right_len--;
  }
  // 如果两边对比结束,吧剩下的一边加入数组
  // 右边数组多出
  if(left_len < right_len)
  {
      len = ArraySize(result);
      ArrayResize(result,len + (right_len - left_len));
      len = ArraySize(result);
      ArrayInsert(result,right,len - 1,left_len ,right_len - left_len);
  }
  else
  {
      len = ArraySize(result);
      ArrayResize(result,len + ( left_len - right_len));
      len = ArraySize(result);
      ArrayInsert(result,left,len - 1,right_len ,left_len - right_len);
  }
  Print("当前组成后的数组: " + result[ArraySize(result) - 1]);
  
  
}

*/

/*
  计数排序算法
  以二分之一分递归分割数组
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/
template < typename T>
void countingSort(T &data[], T& out_data[])
{
  int len = ArraySize(data);
  if (len <= 1) return;
  int max_num = max(data);
  int min_num = min(data);
  int count[];
  ArrayResize(count,max_num + 1);
  ArrayInitialize(count,0);
  int c_len = ArraySize(count);
  for(int i = 0; i<len; i++)
  {
    count[data[i]]++;
  }
  
  for(int i = 0; i<c_len; i++)
    for(int j = 0; j<count[i]; j++)
    {
      // Print("结果:" + )
      int size = ArraySize(out_data);
      ArrayResize(out_data, size + 1);
      ArrayFill(out_data,size,1,i);
    }
  //ArrayResize(out_data,ArraySize(new_arr));
  //ArrayCopy(out_data,new_arr);

}

/*
  桶排序算法
  最大和最小数之间分割出指定的桶数
  arr: 需要排序的数组
  bucket_size:桶的分割数量 最高不能超过20个桶
  seq: 排序的方向, true 为升序, false为降序
*/
template < typename T>
void bucketSort(T &arr[], const int bucket_size = 10)
{
  int len = ArraySize(arr);
  int max_num = max(arr);
  int min_num = min(arr);
  int def = -1;
  // printf("最小数: %d, 最大数: %d", min_num, max_num);
  // 默认最高上限20个桶
  int buckets[][10]; // 桶长度
  int bucket_len[]; // 每个桶里面数据的长度
  int bucket_nums[][2]; // 每个桶的范围
  //扩展数组
  ArrayResize(buckets,len *10);
  ArrayResize(bucket_len,bucket_size);
  ArrayResize(bucket_nums,bucket_size*2);
  ArrayInitialize(buckets, def);
  int gap =  (max_num - min_num + 1) / bucket_size;
  if(gap < min_num)gap = min_num;
  // printf("当前范围: %d, 最大数: %d",bucket_size);
  for(int i = 0; i < bucket_size;i++)
  {
    bucket_nums[i][0] =min_num + gap * i;
    bucket_nums[i][1] =min_num + gap * (i + 1);
    printf("当前范围: %d, 最大数: %d",bucket_nums[i][0],bucket_nums[i][1]);
    
  }
  for(int i=0;i<len; i++)
  {
    // 放入桶中
    for(int j=bucket_size - 1;j >= 0;j--)
     {
      
        // 判断当前元素适合放入几号桶
        if(arr[i] >= bucket_nums[j][0])
        {
          // 将值放入到指定的桶中
          ArrayPrint(bucket_nums);
          for(int k=0;k < bucket_size;k++)
          {
            // 向后插入到不是默认值的位置
            if(buckets[k][j] == def)
            {
              buckets[k][j] = arr[i]; // 将数据放入到桶中
              bucket_len[j] = k; // 记录当前桶的长度
              int z = k;
              // 将已经插入的有序列表重新排列
              while(z>0)
              {
                if(buckets[z - 1][j] > buckets[z][j]) swap(buckets[z - 1][j],buckets[z][j]);
                z--;
              }
              break;
              
            }
            
          }
          break;
        }
     }
        
  }
  T copy_arr[];
     // 将所有桶的数据进行还原
     for(int i=0;i<bucket_size; i++)
     {
      for(int j = 0; j < len;j++)
      {
        if(buckets[j][i] != def)
        {
        
        ArrayResize(copy_arr,ArraySize(copy_arr) + 1);
        copy_arr[ArraySize(copy_arr) - 1] = buckets[j][i];
        }
        else break; // 每个没有值了就跳出当前子循环
      }
      
     }
  // ArrayPrint(buckets);
  ArrayCopy(arr,copy_arr);
  // ArrayPrint(copy_arr);
  //for(int i = 0;i<len;i++)
  //{ 
  //  //比较值放入范围内的桶中
  //  for(int j = 0; j <bucket_size; j++)
  //  {
  //    if(bucket_nums[j][0] <= arr[i] && arr[i] <bucket_nums[j][0])
  //    {
  //      ArrayResize(buckets,ArraySize(buckets) + 10);
  //      buckets[ArraySize(buckets) - 1]
  //    }
  //  }
  //}
 // int n=_getmaxweisu(arr, len);
	//for (int m = 1; m <= n; m++)
	//{
	//	_buckle_sort(arr, len,m);
	//}
}

template < typename T> 
void _buckle_sort(T &arr[], int len,int div)//div表示取位数的余数
{
	//要申请一个二维10*10的数组区保存数字
	int bucket[10][10];
	int def = -1; // 初始化数字
	for (int i = 0; i < 10; i++)
	{
		for (int j = 0; j < 10; j++)
		{
			bucket[i][j] = def;
		}
	}
	int temp = 1;
	for (int i=1; i < div; i++)
	{
		temp = temp * 10;//求出第几位余数
	}
	for (int i = 0; i < len; i++)
	{		
		int k = (arr[i]/temp) % 10;//求第几位的余数
		for (int j = 0; j < 10; j++)
		{
			if (bucket[k][j] == def)
			{
				bucket[k][j] = arr[i];
				break;
			}
		}
	}
	//出桶
	int k = 0;
	for (int i = 0; i < len; i++)
	{
		for (int j = 0; j < len; j++)
		{
		  int len1 = ArrayRange(bucket,0);
		  int len2 = ArrayRange(bucket,1);
		  printf("一维长度: %d, 二维长度: %d",len1,len2);
		  printf("一维数字: %d, 二维数字: %d",i,j);
			if (bucket[i][j] != def)
			{
				arr[k] = bucket[i][j];
				k++;//去遍历桶 让桶的所有数字都出来
				bucket[i][j] = def;
			}
		}
	}
}

//求最大位数的函数
template < typename T>
int _getmaxweisu(T &arr[],int len)//
{
	int max = arr[0];
	for (int i = 0; i < len; i++)
	{
		if (max < arr[i])
		{
			max = arr[i];
		}
	}
	int count = 1;
	while (bool(max/10))
	{
		count++;
		max /= 10;
	}
	return  count;
}
/*
  基数排序算法
  以二分之一分递归分割数组
  arr: 需要排序的数组
  seq: 排序的方向, true 为升序, false为降序
*/
template < typename T>
void radixSort(T &data[]) //基数排序
{     
    int len = ArraySize(data);
    int d = maxbit(data, len);
    T tmp[];
    ArrayResize(tmp, len);
    int count[10]; //计数器
    int i, j, k;
    int radix = 1;
    for(i = 1; i <= d; i++) //进行d次排序
    {
        for(j = 0; j < 10; j++)
            count[j] = 0; //每次分配前清空计数器
        for(j = 0; j < len; j++)
        {
            k = (data[j] / radix) % 10; //统计每个桶中的记录数
            count[k]++;
        }
        for(j = 1; j < 10; j++)
            count[j] = count[j - 1] + count[j]; //将tmp中的位置依次分配给每个桶
        for(j = len - 1; j >= 0; j--) //将所有桶中记录依次收集到tmp中
        {
            k = (data[j] / radix) % 10;
            tmp[count[k] - 1] = data[j];
            count[k]--;
        }
        for(j = 0; j < len; j++) //将临时数组的内容复制到data中
            data[j] = tmp[j];
        radix = radix * 10;
    }
}

template < typename T>
int maxbit(T &data[], int n) //辅助函数，求数据的最大位数
{
    int maxData = data[0];              ///< 最大数
    /// 先求出最大数，再求其位数，这样有原先依次每个数判断其位数，稍微优化点。
    for (int i = 1; i < n; ++i)
    {
        if (maxData < data[i])
            maxData = data[i];
    }
    int d = 1;
    int p = 10;
    while (maxData >= p)
    {
        //p *= 10; // Maybe overflow
        maxData /= 10;
        ++d;
    }
    return d;
}


int merge_min(int x, int y) {
    return x < y ? x : y;
}

int merge_max(int x, int y) {
    return x > y ? x : y;
}

int sum(int a)
{
  a += 1;
  if(a==100) return a;
  return sum(a);
}