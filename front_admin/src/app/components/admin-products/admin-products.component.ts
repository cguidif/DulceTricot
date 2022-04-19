import {Component, OnDestroy, OnInit} from '@angular/core';
import {ProductService} from '../../service/product.service';
import {Subscription} from 'rxjs';
import { ActivatedRoute } from '@angular/router';
import { ProductModel } from 'src/app/models/product.model';
import {FormBuilder, FormGroup, Validators, } from '@angular/forms';

declare var $: any;

@Component({
  selector: 'app-admin-products',
  templateUrl: './admin-products.component.html',
  styleUrls: ['./admin-products.component.css']
})

export class AdminProductsComponent implements OnInit {
  products: any[] = [];
  subs: Subscription[] = [];
  errorMessage: string;
  hasError = false;
  success = false;
  id:string | null;
  product: ProductModel;
  titulo = 'Crear Producto';
  productoForm: FormGroup;
  editPicture: boolean;
  http: any;
  uploader: any;
  pictureUrls: any;
  archivosServer: any;
  lastPK: any;

  
  constructor(private fb:FormBuilder,
    private productService: ProductService,
    private aRoute: ActivatedRoute
    ) { 
      this.productoForm = this.fb.group({
        name: ['',Validators.required],
        description: ['',Validators.required],
        category: ['',Validators.required],
        price: ['',Validators.required],
        image: ['',Validators.required],
      })
      this.id = this.aRoute.snapshot.paramMap.get('id');
      }

  ngOnInit(){
    this.id = this.aRoute.snapshot.paramMap.get('id');
    this.esEditar();   
    
  }

  esEditar(){
    if(this.id !== null){
      this.titulo = 'Editar Producto';  
      this.subs.push(this.productService.getProducto(this.id).subscribe((prod: ProductModel) => {
        this.product = prod;
        this.productoForm.setValue(
          {
            name: prod.name,
            description: prod.description,
            category: prod.category,
            price: prod.price,
            image: prod.image
          }
        )
      }));
    }
  }

  ngOnDestroy(): void {
    this.subs.map(s => s.unsubscribe());
  }

  deleteProduct(id: number): void {
    this.subs.push(this.productService.deleteProduct(id).subscribe(
      res => {
        if (res.status === 'failure') {
          this.hasError = true;
          this.errorMessage = res.message;
        }

        if (res.status === 'success') {
          this.success = true;
          this.errorMessage = res.message;
        }

        this.products = res.products;
        console.log(this.products);
        //$('.alert').delay(1000).slideUp(1500);
      }
    ));
  }

  submit() {
  }

}
