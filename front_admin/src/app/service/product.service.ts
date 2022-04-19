import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {switchMap} from 'rxjs/operators';
import {ProductModel} from '../models/product.model';


@Injectable({
  providedIn: 'root'
})
export class ProductService {

  url = 'http://localhost:3636/api/products';

  constructor(private httpClient: HttpClient) {
  }

  getAllProducts(): Observable<any[]> {
    return this.httpClient.get<any[]>('http://localhost:3636/api/products');
  }

  getProductos(): Observable<any>{
    return this.httpClient.get(this.url);
  }

  getProducto(id:string): Observable<any>{
    return this.httpClient.get(this.url + '/' +  id);
  }

  getSingleProduct(id: number): Observable<ProductModel> {
    return this.httpClient.get<ProductModel>(this.url + '/' + id);
  }

  eliminarProducto(id:string):Observable<any> {
    return this.httpClient.delete(this.url + id);
  }

  crearProducto(producto:ProductModel):Observable<any>{
    return this.httpClient.post(this.url, producto);
  }

  editarProducto(id:string, producto:ProductModel):Observable<any> {
    return this.httpClient.put(this.url + id, producto);
  }

  deleteProduct(productId): Observable<any> {
    return this.httpClient.delete<{ message?: string, status: string }>(`http://localhost:3636/api/products/delete/${productId}`)
      .pipe(
        switchMap(async (data) => {
          const prods = await this.getAllProducts().toPromise();
          return {
            ...data,
            ...prods
          };
        })
      );
  }
}
