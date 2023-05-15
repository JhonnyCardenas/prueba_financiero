import { Component, OnInit } from '@angular/core';
import { ItemService } from '../item.service';

import { Router } from '@angular/router';

// ...

export class LoginComponent {
  // ...

  constructor(private router: Router) {}

  login() {
    // Validar las credenciales del usuario y verificar el inicio de sesión exitoso

    if (loginExitoso) {
      // Redirigir al usuario a la página de lista de elementos
      this.router.navigate(['/items']);
    }
  }

  // ...
}

@Component({
  selector: 'app-item-list',
  templateUrl: './item-list.component.html',
  styleUrls: ['./item-list.component.css']
})

export class ItemListComponent implements OnInit {
  items: any[];

  constructor(private itemService: ItemService) { }

  ngOnInit() {
    this.itemService.getItems().subscribe(
      (response: any[]) => {
        this.items = response;
      },
      (error) => {
        console.error(error);
      }
    );
  }
}
