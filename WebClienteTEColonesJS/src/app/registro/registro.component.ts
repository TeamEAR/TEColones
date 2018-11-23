import { Component, OnInit } from '@angular/core';
import {PostService} from './post.service';
@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.scss'],
  providers: [PostService]
})
export class RegistroComponent implements OnInit {
  sedes: IPost[];
  posts: IPost[];

  constructor(private postService: PostService) {
    this.obtenerSedes();
  }

  obtenerSedes() {
    this.postService.getPosts().subscribe(posts => {
      this.sedes = posts;
    });
  }




  ngOnInit() {
  }

}

interface IPost {
  IdSedeXTEC: number;
  NombreSedeXTEC: string;
  UbicacionSede: string;
}
