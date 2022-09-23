public class BubbleSort {
   static void alg(int arr[]){
        int n = arr.length;
        for (int i = 0; i < n - 1; i++)
            for (int j = 0; j < n - i - 1; j++)
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
    }
   
    static void printArr(int arr[]){
        int n = arr.length;
        for (int i = 0; i < n; ++i)
        System.out.print(arr[i] + ",");
        System.out.println();
    }

    public static void sort(int[] numbers) {
        alg(numbers);
        printArr(numbers);
    }

}
