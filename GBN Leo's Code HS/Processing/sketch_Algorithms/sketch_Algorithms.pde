int[] nums = {-1, 5, 3, 4, 2, 7, 9, 9, 12, 1, 0, 13, 15};
int[] source = {32, 9, 7, 1, 0, -2, 80};
int[] dest = new int[source.length];

void setup() {
  //println( binarySearch(15) );
  //println( selectionSort(nums) );
  //insertionSort();
  mergeSort(nums);
  println(nums);
}

public void mergeSort(int[] nums) {
  if (nums.length == 1) {
    return;
  }
  int mid = nums.length / 2;
  int[] a = new int[mid];
  for (int i = 0; i < mid; i++) {
    a[i] = nums[i];
  }
  int[] b = new int[nums.length - mid];
  for (int i = mid; i < nums.length; i++) {
    b[i-mid] = nums[i];
  }
  merge(a, b, nums);
}

public void merge(int[] a, int[] b, int[] result) {
  int i = 0, j = 0;
  while (true) {
    if (i == a.length && j == b.length) {
      return;
    } else if (i == a.length) {
      result[i+j] = b[j];
      j++;
    } else if (j == b.length) {
      result[i+j] = a[i];
      i++;
    } else if (a[i] < b[j]) {
      result[i+j] = a[i];
      i++;
    } else {
      result[i+j] = b[j];
      j++;
    }
  }
}
public int binarySearch(int num) {
  int high = nums.length;
  int low = -1;
  int probe;
  while (high - low > 1) {
    probe = (high+low)/2;
    if (nums[probe] > num) {
      high = probe;
    } else {
      low = probe;
    }
  }
  return low;
}

public int[] selectionSort(int[] sort) {
  for (int i = 0; i < sort.length; i++) {
    for (int j = 0; j < sort.length-1; j++) {
      if (sort[j] > sort[j+1]) {
        int temp = sort[j];
        sort[j] = sort[j+1];
        sort[j+1] = temp;
      }
    }
  }
  return sort;
}

public void insertionSort() {
  for (int i = 0; i < source.length; i ++) {
    int num = source[i];
    int insertIndex = 0;
    int j = i;
    while (j > 0 && insertIndex == 0) {
      if (num > dest[j-1]) {
        insertIndex = j;
      } else { 
        dest[j] = dest[j-1];
      }
      j--;
    }
    dest[insertIndex] = num;
  }
  println(dest);
}