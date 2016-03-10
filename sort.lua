http://www.kuqin.com/shuoit/20160307/351022.html 
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

-- 从数组最后一个值开始和前面的比较，如果后面值小于前面值，则前后交换值
function BubbleSort(tab)
	local temp = nil
	for i=(#tab), 1, -1 do
		for j=1, ((#tab)-1) do
			if tab[j + 1] < tab[j] then
				temp = tab[j]
				tab[j] = tab[j + 1]
				tab[j + 1] = temp
			end
		end
	end

	for i=1,(#tab) do
		print(tab[i])
	end
end

-- 从数组第一个值开始和后面的比较，标记第一个开始比较值的下标，如果前面值大于后面值，则标记后面值的下标；
-- 依次比较后面的值，当这次遍历完后，比较此时标记的下标与第一个开始比较值的下标，如果不相等，则交换值
function seleSort(tab)
	local minIdx = nil
	local temp = nil
	for i=1,((#tab) - 1) do
		minIdx = i
		for j=i + 1,(#tab) do
			if tab[minIdx] > tab[j] then
				minIdx = j
			end
		end
		if minIdx ~= i then
			temp = tab[i]
			tab[i] = tab[minIdx]
			tab[minIdx] = temp
		end
	end

	for i=1,(#tab) do
		print(tab[i])
	end
end

seleSort({3,2,1,10,11,5,3,1})
