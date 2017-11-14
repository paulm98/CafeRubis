void setup()
{
 
  size(800,600);
  
  loadData();
  
  
}


void loadData()
{
  
  Table table = loadTable("CafeRubis.csv", "header");
  
 
  for(TableRow r:table.rows())
  {
  
    Product product = new Product(r);
 
    products.add(product);
  }
  
  
  for(Product s:products)
  {
    println(s.name);
  }
  
 
  for(int i = 0 ; i < products.size() ; i ++)
  {
    Product s = products.get(i);
    println(s.name);
  }
}

ArrayList<Product> products = new ArrayList<Product>(); 
ArrayList<Product> bill = new ArrayList<Product>(); 