import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.scss']
})
export class RegistroComponent implements OnInit {
  sedes: string[];

  constructor() {
    this.sedes = ['Cartago', 'San Jose'];

  }


  ngOnInit() {
  }

}
