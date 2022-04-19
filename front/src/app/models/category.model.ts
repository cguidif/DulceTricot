export interface CategoryModelServer {
  id: number;
  title: String;
  image: String;
}


export interface serverResponse  {
  count: number;
  categories: CategoryModelServer[]
};
