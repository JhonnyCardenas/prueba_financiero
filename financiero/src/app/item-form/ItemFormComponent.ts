import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ItemService } from '../item.service';

@Component({
  selector: 'app-item-form',
  templateUrl: './item-form.component.html',
  styleUrls: ['./item-form.component.css']
})
export class ItemFormComponent implements OnInit {
  itemId: number;
  item: any;

  constructor(private route: ActivatedRoute, private router: Router, private itemService: ItemService) { }

  ngOnInit() {
    this.itemId = this.route.snapshot.params.id;
    if (this.itemId) {
      this.itemService.getItem(this.itemId).subscribe(
        (response: any) => {
          this.item = response;
        },
        (error) => {
          console.error(error);
        }
      );
    } else {
      this.item = {}; // Inicializa un objeto vacío para el nuevo registro
    }
  }

  saveItem() {
    if (this.itemId) {
      // Actualizar registro existente
      this.itemService.updateItem(this.itemId, this.item).subscribe(
        (response) => {
          console.log('Registro actualizado con éxito');
          this.router.navigate(['/items']);
        },
        (error) => {
          console.error(error);
        }
      );
    } else {
      // Crear nuevo registro
      this.itemService.createItem(this.item).subscribe(
        (response) => {
          console.log('Registro creado con éxito');
          this.router.navigate(['/items']);
        },
        (error) => {
          console.error(error);
        }
      );
    }
  }
}
