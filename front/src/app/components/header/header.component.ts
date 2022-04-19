import {Component, OnInit} from '@angular/core';
import {CartService} from "../../services/cart.service";
import {CartModelServer} from "../../models/cart.model";
import {CategoryModelServer, serverResponse} from "../../models/category.model";
import {CategoryService} from 'src/app/services/category.service';
import {UserService } from 'src/app/services/user.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  cartData: CartModelServer;
  cartTotal: number;
  categories: CategoryModelServer[] = [];
  authState: boolean;



  constructor(private categorytService: CategoryService,
              public cartService: CartService,
              private userService:UserService,
              private router: Router,) {
  }

  ngOnInit() {
  this.cartService.cartTotal$.subscribe(total => {this.cartTotal = total;});
  this.cartService.cartDataObs$.subscribe(data => this.cartData = data);
  
  this.userService.authState$.subscribe(authState => this.authState = authState);
  
  this.categorytService.getAllCategories(8).subscribe((prods: serverResponse ) => {
    this.categories = prods.categories;
    console.log(this.categories);
  });
  }

  goToAdmin2(){
      //this.router.navigateByUrl("https://www.google.com");
      window.location.href="localhost:4201/products/products";
  }

  goToAdmin(){
    const urlToOpen = "http://localhost:4201/";

    let url: string = '';
    if (!/^http[s]?:\/\//.test(urlToOpen)) {
        url += 'http://';
    }

    url += urlToOpen;
    window.open(url, '_blank');

    console.log("http://localhost:4201/");
    //window.open("http://localhost:4201/", "_blank");
}

}
