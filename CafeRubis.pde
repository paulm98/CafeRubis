void setup()
{
 
  size(800,600);
  background(210);
  
  loadData();
  
  printProducts();
  
  displayProducts();
}


void loadData()
{
  
  Table table = loadTable("CafeRubis.csv", "header");
  
 
  for(TableRow r:table.rows())
  {
    
    Product product = new Product(r);
 
    products.add(product);
  }
}
  
 void printProducts(){
  
  for(Product s:products)
  {
    println(s.name);
  }
  
 
  for(int i = 0 ; i < products.size() ; i ++)
  {
    Product s = products.get(i);
    println(s.sprice);
  }
}

ArrayList<Product> products = new ArrayList<Product>(); 
ArrayList<Product> bill = new ArrayList<Product>(); 

void displayProducts(){
  fill(0);
  textSize(20);
  for(int i = 0 ; i < products.size() ; i ++)
  {
    int j=50;
    int k=50;
    Product s = products.get(i);
    text(s.name,10,j);
    text(s.sprice,300,k);
    j=j+100;
    k=k+100;
  }
}