import 'dart:io';

void main() {
  List<Map<int, int>> array = List.generate(3, (_) => {});

  // Input elements for the matrix
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("Element [$i][$j]: ");
      int value = int.parse(stdin.readLineSync()!);
      array[i][j] = value;
    }
  }

 
    print("\nEnter 1 to get Sum of all elements");
    print("Enter 2 to get Sum of specific Row");
    print("Enter 3 to get Sum of specific Columns");
    print("Enter 4 to get Sum of diagonal elements");
    print("Enter 5 to get Sum of anti-diagonal elements");
    print("Press 0 for exit");

    stdout.write("Enter your choice: ");
    int? choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 0:
        break;

      case 1:
        int sum = 0;
        for (int i=0; i<3; i++) {
          for (int j=0; j<3; j++) {
            sum += array[i][j]!;
          }
        }
        print("Sum of all elements: $sum");
        break;

      case 2:
       stdout.write("Enter the row index (0-2): ");
        int r1 = int.parse(stdin.readLineSync()!);
        if (r1 < 0 || r1 >= 3) {
          print("Invalid row index");
          break;
        }
        int rowSum = 0;
        for (int j = 0; j < 3; j++) {
          rowSum += array[r1][j]!;
        }
        print("Sum of row $r1: $rowSum");
        break;


      case 3:
        stdout.write("Enter the column index (0-2): ");
        int c1 = int.parse(stdin.readLineSync()!);
        
        int colSum = 0;
        for (int i = 0; i < 3; i++) {
          colSum += array[i][c1]!;
        }
        print("Sum of column $c1: $colSum");
        break;

      case 4:
        int sum = 0;
        for (int i = 0; i < 3; i++) {
          sum += array[i][i]!;
        }
        print("Sum of diagonal elements: $sum");
        break;

      case 5:
        int antiDiagSum = 0;
        for (int i = 0; i < 3; i++) {
          antiDiagSum += array[i][2 - i]!;
        }
        print("Sum of anti-diagonal elements: $antiDiagSum");
        break;

      default:
        print("Invalid choice");
    }
  }

