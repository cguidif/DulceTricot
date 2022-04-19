import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../../environments/environment";
import {Observable} from "rxjs";

import {CategoryModelServer, serverResponse} from "../models/category.model";

@Injectable({
  providedIn: 'root'
})
export class CategoryService {
  private url = environment.serverURL;

  constructor(private http: HttpClient) {
  }

  getAllCategories(limitOfResults=10): Observable<serverResponse> {
    return this.http.get<serverResponse>(this.url + 'categories', {
      params: {
        limit: limitOfResults.toString()
      }
    });
  }

  getSingleCategory(id: number): Observable<CategoryModelServer> {
    return this.http.get<CategoryModelServer>(this.url + 'categories/' + id);
  }

}
