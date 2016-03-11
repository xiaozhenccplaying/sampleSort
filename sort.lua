 -- /**  *@Description:<p>冒泡排序算法实现</p>  *@time 2016-3-3 下午8:54:27  */
 -- public class BubbleSort {          
 -- 	public static void bubbleSort(int[] arr) {         
 -- 		if(arr == null || arr.length == 0)             
 -- 			return ;         
 -- 		for(int i=0; i<arr.length-1; i++) {             
 -- 			for(int j=arr.length-1; j>i; j--) {                 
 -- 				if(arr[j] < arr[j-1]) {                     
 -- 					swap(arr, j-1, j);                 
 -- 				}             
 -- 			}         
 -- 		}     
 -- 	}               
 -- 	public static void swap(int[] arr, int i, int j) {         
 -- 		int temp = arr[i];         
 -- 		arr[i] = arr[j];         
 -- 		arr[j] = temp;     
 -- 	} 
 -- }

-- /**  *@Description:<p>简单选择排序算法的实现</p>  */
-- public class SelectSort {          
-- 	public static void selectSort(int[] arr) {         
-- 		if(arr == null || arr.length == 0)             
-- 			return ;         
-- 		int minIndex = 0;         
-- 		for(int i=0; i<arr.length-1; i++) { //只需要比较n-1次
--             minIndex = i;             
--             for(int j=i+1; j<arr.length; j++) { //从i+1开始比较，因为minIndex默认为i了，i就没必要比了。
--                 if(arr[j] < arr[minIndex]) {                     
--                 minIndex = j;                 
--                 }             
--                 }                          
--                 if(minIndex != i) { //如果minIndex不为i，说明找到了更小的值，交换之。
--                 swap(arr, i, minIndex);             
--             }         
--         }              
--     }          
--     public static void swap(int[] arr, int i, int j) {         
--     	int temp = arr[i];         
--     	arr[i] = arr[j];         
--     	arr[j] = temp;     
--     }  
-- }

-- /**  *@Description:<p>简单插入排序算法实现</p>  */
-- public class InsertSort {          
-- 	public static void insertSort(int[] arr) {         
-- 	if(arr == null || arr.length == 0)             
-- 	return ;                  
-- 	for(int i=1; i<arr.length; i++) { //假设第一个数位置时正确的；要往后移，必须要假设第一个。
--             int j = i;             
--             int target = arr[i]; //待插入的                          
--             //后移
--             while(j > 0 && target < arr[j-1]) {                 
-- 	            arr[j] = arr[j-1];                 
-- 	            j --;             
--             }                          
--             //插入 
--             arr[j] = target;         
--         }                  
--     }  
-- }

-- public class QuickSort {
-- 	public static void Qsort(int a[], int low, int high) { 
--		if(a == null || a.length == 0)             
-- 			return ; 
-- 	    if(low >= high)
-- 	    {
-- 	        return;
-- 	    }
-- 	    int first = low;
-- 	    int last = high;
-- 	    int key = a[first];/*用字表的第一个记录作为枢轴*/
	 
-- 	    while(first < last)
-- 	    {	
-- 	        while(first < last && a[last] >= key)
-- 	        {
-- 	            --last;
-- 	        }
	 
-- 	        a[first] = a[last];/*将比第一个小的移到低端*/
	 
-- 	        while(first < last && a[first] <= key)
-- 	        {
-- 	            ++first;
-- 	        }
	         
-- 	        a[last] = a[first];/*将比第一个大的移到高端*/
--     	}
-- 	    a[first] = key;/*枢轴记录到位*/
-- 	    Qsort(a, low, first-1);
-- 	    Qsort(a, first+1, high);
--     ｝
-- }

function printTab(tab)
	for i=1,#tab do
		print(tab[i])
	end
end

-- -- 从数组最后一个值开始和前面的比较，如果后面值小于前面值，则前后交换值
-- function BubbleSort(tab)
--	if((not tab) or ((#tab == 0))) then          
--		return
--	end
-- 	local temp = nil
-- 	for i=(#tab), 1, -1 do
-- 		for j=1, ((#tab)-1) do
-- 			if tab[j + 1] < tab[j] then
-- 				temp = tab[j]
-- 				tab[j] = tab[j + 1]
-- 				tab[j + 1] = temp
-- 			end
-- 		end
-- 	end

-- 	for i=1,(#tab) do
-- 		print(tab[i])
-- 	end
-- end

-- -- 从数组第一个值开始和后面的比较，标记第一个开始比较值的下标，如果前面值大于后面值，则标记后面值的下标；
-- -- 依次比较后面的值，当这次遍历完后，比较此时标记的下标与第一个开始比较值的下标，如果不相等，则交换值
-- function seleSort(tab)
--	if((not tab) or ((#tab == 0))) then          
--		return
--	end
-- 	local minIdx = nil
-- 	local temp = nil
-- 	for i=1,((#tab) - 1) do
-- 		minIdx = i
-- 		for j=i + 1,(#tab) do
-- 			if tab[minIdx] > tab[j] then
-- 				minIdx = j
-- 			end
-- 		end
-- 		if minIdx ~= i then
-- 			temp = tab[i]
-- 			tab[i] = tab[minIdx]
-- 			tab[minIdx] = temp
-- 		end
-- 	end

-- 	for i=1,(#tab) do
-- 		print(tab[i])
-- 	end
-- end

-- -- 由于是从第一个值开始被排序，所以从第二个值开始插入比较
-- -- 新插入的值从后往前依次和已排序的值相比较，如果新插入的值比前一个已排序的值小，则将这个已排序的值移到后一位置，将新插入的值插入已排序值的位置
-- function InsertSort(tab)
--	if((not tab) or ((#tab == 0))) then          
--		return
--	end
-- 	local temp = nil
-- 	for i=2,(#tab) do
-- 		temp = tab[i]
-- 		local j = i
-- 		while ((j > 1) and (temp < tab[j - 1])) do
-- 			tab[j] = tab[j - 1]
-- 			j = j - 1
-- 		end

-- 		tab[j] = temp
-- 	end

-- 	for i=1,(#tab) do
-- 		print(tab[i])
-- 	end
-- end

-- 取数组第一个值为比较值pointValue，从数组最右边起定义下标rightIdx，从数组最右边起定义下标leftIdx
-- rightIdx依次递减，若值小于pointValue，则交换值；同时leftIdx依次递增，若值大于pointValue，则交换值
-- 重复上述过程，直到rightIdx和leftIdx相同，则本次比较结束。
-- 递归以上步骤
-- function QuickSort(tab)
-- 	if((not tab) or ((#tab == 0))) then          
-- 		return
-- 	end

-- 	local function QSort(beginIdx, endIdx)
-- 		if beginIdx >= endIdx then
-- 			return
-- 		end

-- 		local leftIdx = beginIdx
-- 		local rightIdx = endIdx
-- 		local pointValue = tab[beginIdx]

-- 		while (leftIdx < rightIdx) do
-- 			while ((leftIdx < rightIdx) and (tab[rightIdx] >= pointValue)) do
-- 				rightIdx = rightIdx - 1
-- 			end
-- 			tab[leftIdx] = tab[rightIdx]
-- 			while ((leftIdx < rightIdx) and (tab[leftIdx] <= pointValue)) do
-- 				leftIdx = leftIdx + 1
-- 			end
-- 			tab[rightIdx] = tab[leftIdx]
-- 		end

-- 		tab[leftIdx] = pointValue
-- 		QSort(beginIdx, leftIdx - 1)
-- 		QSort(rightIdx + 1, endIdx)
-- 	end
-- 	local beginIdx = 1
-- 	local endIdx = (#tab)
-- 	QSort(beginIdx, endIdx)

-- 	for i=1,(#tab) do
-- 		print(tab[i])
-- 	end
-- end

QuickSort({4,10,11,5,3,22,23,24,1})



