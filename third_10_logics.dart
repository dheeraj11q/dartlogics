// 1. Determine a second largest element in a integer array.

void determineSecondLargestElement(List<int> nums) {
  for (int i = 0; i <= nums.length - 1; i++) {
    int key, j;

    key = nums[i];
    j = (i - 1);

    while (j >= 0 && nums[j] < key) {
      nums[j + 1] = nums[j];
      j--;
    }

    nums[j + 1] = key;
  }

  print(nums[1]);
}

// 2. Explain the reversal of an array.

void revesalOfaArray(List<int> nums) {
  int temp;

  for (int i = 0; i < nums.length / 2; i++) {
    temp = nums[i];
    nums[i] = nums[nums.length - 1 - i];
    nums[nums.length - 1 - i] = temp;
  }

  print(nums);
}

// 3. How to remove spacial characters fro string?

void removeSpacialCharacters(String text) {
  print(text.replaceAll(RegExp('[^a-z0-9A-Z ]'), ""));
}
