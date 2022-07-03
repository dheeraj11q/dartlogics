// 1. How to caculate the number of numerical digits in a string

void digitCalculateFromString(String s) {
  String digits = "0123456789";

  int num = 0;

  for (String i in s.split("")) {
    if (digits.contains(i)) {
      num += int.parse(i);
    }
  }

  print("Total Digits = $num");
}

// 2. How to print these type value 12345654321 ?

void farAndRevNum(int len) {
  int num = 0;
  bool revNum = false;
  for (int i = 0; i <= len; i++) {
    if ((num < (len / 2) + 1) && revNum == false) {
      num += 1;
      print(num);
    } else {
      revNum = true;
      num -= 1;

      print(num);
    }
  }
}

// 3. How to compute the first character of a string that is not repeated?

void firstNonRepeatedChar(String s) {
  List<String> filterChar = [];
  List<String> repChar = [];

  Set<String> nonRepChar = Set<String>();

  for (String i in s.split("")) {
    if (filterChar.contains(i)) {
      repChar.add(i);
    } else {
      filterChar.add(i);
    }
  }

  for (String c in s.split("")) {
    if (!repChar.contains(c)) {
      nonRepChar.add(c);
    }
  }

  print(nonRepChar.first);
}

// 4. How to search missing number in array that contain integers from 1 to 10?

void getMissingNumber1to10(List<int> nums) {
  int len = nums.length;

  int sumOfLen = (len * (len + 1) / 2).floor();

  int res = 0;
  for (int i = 0; i < len - 1; i++) {
    res = res + nums[i];
  }

  print("The missing number - ${sumOfLen - res}");
}

// 5. How to get matching elements in a integer array?

void matchIntegerCheck(List<int> nums) {
  List<int> numFilter = [];

  for (int i = 0; i < nums.length; i++) {
    if (numFilter.contains(nums[i])) {
      print(nums[i]);
    } else {
      numFilter.add(nums[i]);
    }
  }
}

// 6. How to delete repeated elements in a integer array?

void deleteRepeatedItemIntArray(List<int> nums) {
// first way
  // print(num.toSet());

// second way

  Map<int, bool> numMap = {};

  for (int i = 0; i < nums.length; i++) {
    if (!numMap.containsKey(nums[i])) {
      numMap[nums[i]] = true;
    }
  }

  print(numMap.keys);
}

// 7. Determine the largest and smallest number in a integer list with is not sorted.

void findLargestAndSmallestNum(List<int> nums) {
  int largestNum = nums[0];
  int smallest = nums[0];

  for (int i = 0; i < nums.length; i++) {
    if (largestNum < nums[i]) {
      largestNum = nums[i];
    }

    if (smallest > nums[i]) {
      smallest = nums[i];
    }
  }

  print("Largest - $largestNum");
  print("Smallest - $smallest");
}

// 8. Explain the bubble sort Algorithm

void bubbleSortAlgorithm(List<int> nums) {
  int temp;
  bool isSort = false;
  for (int i = 0; i < (nums.length - 1); i++) {
    isSort = true;
    for (int j = 0; j < (nums.length - 1 - i); j++) {
      if (nums[j] > nums[j + 1]) {
        temp = nums[i];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;
        isSort = false;
      }
    }

    if (isSort == true) {
      break;
    }
  }

  print(nums);
}

// 9. Implement insertion sort algorithm.

void insertionSortAlgorithm(List<int> nums) {
  for (int i = 0; i <= nums.length - 1; i++) {
    int key, j;

    key = nums[i];
    j = (i - 1);

    while (j >= 0 && nums[j] > key) {
      nums[j + 1] = nums[j];
      j--;
    }

    nums[j + 1] = key;
  }
  print(nums);
}

// 10. How to swap to string variables each other without using third variable?

void swapToStrings(String a, String b) {
  a = a + b;
  b = a.substring(0, (a.length - b.length));
  a = a.substring(b.length);

  print("a = $a");
  print("b = $b");
}
