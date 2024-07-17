import 'dart:io';

void main() {
  List<List<int>> m1 = List.generate(3, (i) => List.filled(3, 0));
  List<List<int>> m2 = List.generate(3, (i) => List.filled(3, 0));
  List<List<int>> m3 = List.generate(3, (i) => List.filled(3, 0));

  print("Enter values for Matrix 1:");
  for (int i = 0; i < m1.length; i++) {
    for (int j = 0; j < m1[i].length; j++) {
      stdout.write("${i + 1}${j + 1} : ");
      m1[i][j] = int.parse(stdin.readLineSync() ?? "0");
    }
  }

  print("Enter values for Matrix 2:");
  for (int i = 0; i < m2.length; i++) {
    for (int j = 0; j < m2[i].length; j++) {
      stdout.write("${i + 1}${j + 1} : ");
      m2[i][j] = int.parse(stdin.readLineSync() ?? "0");
    }
  }

  print("Sum of Matrix 1 and Matrix 2:");


  for (int i = 0; i < m3.length; i++) {
    for (int j = 0; j < m3[i].length; j++) {
      m3[i][j] = m1[i][j] + m2[i][j];
    }
  }

  for (int i = 0; i < m3.length; i++) {
    for (int j = 0; j < m3[i].length; j++) {
      stdout.write("${m3[i][j]} ");
    }
    print(""); 
  }
}
