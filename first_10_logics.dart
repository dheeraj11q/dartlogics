// 1. reverse a string with loop

void reverseString(String name) {
  List<String> nameR = [];

  for (int i = name.length - 1; i > 0; i--) {
    nameR.add(name[i]);
  }

  print(nameR.join());
}

// 2. how to check palindrome

void palindrome(String name) {
  List<String> nameR = [];

  for (int i = name.length; i > 0; i--) {
    nameR.add(name[i - 1]);
  }

  if (nameR.join() == name) {
    print("This is palindrome");
  } else {
    print("This is not plindrome");
  }
}

// 3. how to reverse a string without loop

void reverse2(String name) {
  print(name.split("").reversed.join());
}

// 4. how to print same numbers from integer list

void sameNumGetFromIntList(List<int> numList) {
  List<int> numsF = [];

  for (int i = 0; i < numList.length; i++) {
    if (numsF.contains(numList[i])) {
      print(numList[i]);
    } else {
      numsF.add(numList[i]);
    }
  }
}

// 5. how to get the metching characters in a string

void matchString(String name) {
  List<String> nameFilter = [];

  List<String> sameChar = [];

  for (int i = 0; i < name.length; i++) {
    if (nameFilter.contains(name[i])) {
      sameChar.add(name[i]);
    } else {
      nameFilter.add(name[i]);
    }
  }

  print(sameChar.join());
}

// 6. how get non matching characters in a string?

void nonMatchCharacterGet(String string) {
  List<String> stringFilter = [];

  List<String> mathChar = [];

  List<String> nonMatchChar = [];

  for (int i = 0; i < string.length; i++) {
    if (stringFilter.contains(string[i])) {
      mathChar.add(string[i]);
    } else {
      stringFilter.add(string[i]);
    }
  }

  for (int i = 0; i < string.length; i++) {
    if (!mathChar.contains(string[i])) {
      nonMatchChar.add(string[i]);
    }
  }

  print(nonMatchChar.join());
}

// 7. how to calculate the number of vawel and consonants in a string?

void vowelsAndConsonantGet(String name) {
  String vowels = "aeiou";
  String alphabet = "abcdefghijklmnopqrstuvwxyz";

  List<String> nameVow = [];

  List<String> nameCon = [];

  for (int i = 0; i < name.length; i++) {
    if (vowels.contains(name[i].toLowerCase())) {
      nameVow.add(name[i]);
    } else if (alphabet.contains(name[i].toLowerCase())) {
      nameCon.add(name[i]);
    }
  }

  print("Vowels = ${nameVow.length}");
  print("Consonants = ${nameCon.length}");
}

// 8. How do you prove that the two string are anagrams?

void anagramCheck(String name1, String name2) {
  if (name1.length == name2.length) {
    List<String> name1Char = [];

    for (String i in name1.toLowerCase().split("")) {
      if (name2.toLowerCase().split("").contains(i)) {
        name1Char.add(i);
      }
    }

    if (name1Char.length == name2.length) {
      print("It is anagram");
    } else {
      print("It is not anagram!");
    }
  } else {
    print("It is not anagram!");
  }
}

// 9. find the count for the occurence of a particular character in a string.

void findOccurrenceChar(String name, String searchCharacter) {
  List<String> nameChar = [];

  for (String i in name.toLowerCase().split("")) {
    if (searchCharacter.toLowerCase() == i) {
      nameChar.add(i);
    }
  }

  print("Charcters = ${nameChar.length}");
}

// 10. How to verify if two strings are a rotation mutually?  psychology  chologypsy

void rotationMutuallyString(String s1, String s2) {
  if (s1.length == s2.length) {
    String tempString = s1 + s1;

    if (tempString.contains(s2)) {
      print("It is rotation mutually");
    } else {
      print("It is not rotation mutually");
    }
  } else {
    print("It is not rotation mutually");
  }
}
