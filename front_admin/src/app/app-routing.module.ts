import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {RouterModule, Routes} from '@angular/router';
import {MainContentComponent} from './components/main-content/main-content.component';
import {AllProductsComponent} from './components/products/all-products.component';
import { UsersComponent } from './components/users/users.component';
import { ConfigComponent } from './components/config/config.component';
import { OrdersComponent } from './components/orders/orders.component';
import { ColorsComponent } from './components/colors/colors.component';
import { AdminProductsComponent } from './components/admin-products/admin-products.component';

const routes: Routes = [
  {
    path: '',
    component: MainContentComponent
  },
  {
    path: 'products',
    component: AllProductsComponent
  },
  {
    path: 'config',
    component: ConfigComponent
  },
  {
    path: 'orders',
    component: OrdersComponent
  },
  {
    path: 'users',
    component: UsersComponent
  },
  {
    path: 'colors',
    component: ColorsComponent
  },
  {
    path: 'colors/:id',
    component: ColorsComponent
  },
  {
    path: 'admin-product/:id',
    component: AdminProductsComponent
  }
];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [
    RouterModule
  ]
})
export class AppRoutingModule { }
