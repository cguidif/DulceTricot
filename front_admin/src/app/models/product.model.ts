export interface ProductModel {
  id: number;
  name: String;
  category: String;
  description: String;
  image: String;
  price: number;
  quantity: number;
  images: String;
}


export interface serverResponse  {
  count: number;
  products: ProductModel[]
};
