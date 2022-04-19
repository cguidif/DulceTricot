export interface UserModelServer {
  id: number;
  username: String;
  email: String;
  lname: String;
  age: number;
  role: number;
}


export interface serverResponse  {
  count: number;
  users: UserModelServer[]
};
