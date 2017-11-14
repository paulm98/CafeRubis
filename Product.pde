class Product{
  String name;
  float price; 
  String sprice = nf(price,1,2);

Product(String name, float price, String sprice)
{
  this.name = name;
  this.price = price;
  this.sprice = sprice;
}

Product(TableRow row)
{
  name = row.getString("Name");
  sprice = row.getString("Price");
}

String toString()
{
  return name + ", " 
      + sprice;
}

}