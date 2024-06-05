import 'dart:io';

void main()
{
     List<Map<int, int>> l1 = List.generate(3, (_) => {});
  List<Map<int, int>> l2 = List.generate(3, (_) => {});
  List<Map<int, int>> l = List.generate(3, (_) => {});

print("Enter Elements of matrix no. 1 ");

     
    for (int i = 0; i < 3; i++) 
    {
      for (int j = 0; j < 3; j++)
      {
        stdout.write("Element [$i][$j]: ");
        int value = int.parse(stdin.readLineSync()!);
        l1[i][j] = value;
     }
    }

      print("Enter elements of matrix no. 2 :");
    for (int i = 0; i < 3; i++)
     {
        for (int j = 0; j < 3; j++) {
        stdout.write("Element [$i][$j]: ");
        int value = int.parse(stdin.readLineSync()!);
        l2[i][j] = value;
    }
  }

  for(int i=0; i < 3 ; i++)
  {
    for(int j=0; j<3; j++)
    {
      l[i][j] = l1[i][j]! + l2[i][j]!;
    }
  }

  for(int i=0; i < 3 ; i++)
  {
    for(int j=0; j<3; j++)
    {
      stdout.write("${l[i][j]} ");
    }
  }


}