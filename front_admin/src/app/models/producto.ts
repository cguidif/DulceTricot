export class Product
{
    _id?:number;
    title:string;
    image:string;
    description:string;
    price:number;

    constructor(title:string,image:string,description:string,price:number){
        this.title=title;
        this.image=image;
        this.description=description;
        this.price=price;
    }
}

