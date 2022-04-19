import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-colors',
  templateUrl: './colors.component.html',
  styleUrls: ['./colors.component.css']
})
export class ColorsComponent implements OnInit {

  id:string | null;

  constructor(private aRoute: ActivatedRoute) { }

  ngOnInit(): void {

    this.id = this.aRoute.snapshot.paramMap.get('id');
    console.log('Editando product id: '+ this.id?.toString());

  }

}
