import { Component, OnInit } from '@angular/core';
import {CategoryModelServer, serverResponse} from "../../models/category.model";
import {Router} from "@angular/router";
import {CategoryService} from 'src/app/services/category.service';

@Component({
  selector: 'app-categories',
  templateUrl: './categories.component.html',
  styleUrls: ['./categories.component.scss']
})
export class CategoriesComponent implements OnInit {

    categories: CategoryModelServer[] = [];
  
    constructor(private categorytService: CategoryService,
                private router:Router) {
    }

  ngOnInit(): void {
      this.categorytService.getAllCategories(8).subscribe((prods: serverResponse ) => {
      this.categories = prods.categories;
      console.log(this.categories);
    });
  }

  selectCategory(id: number) {
    this.router.navigate(['/category', id]).then();
  }
}
