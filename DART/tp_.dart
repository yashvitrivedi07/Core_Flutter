
     int i = 0;
    while (i < product.length) {
    var item = product[i];
    print("Enter ${i+1} for \tProduct ID: ${item['pro_id']}\t, Name: ${item['pro_name']}\t, Category: ${item['category']}\n");
    i++;
  }