import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ItemService } from '../item.service';

@Component({
  selector: 'app-item-detail',
  templateUrl: './item-detail.component.html',
  styleUrls: ['./item-detail.component.css']
})
export class ItemDetailComponent implements OnInit {
  itemId: number;
  item: any;

  constructor(private route: ActivatedRoute, private itemService: ItemService) { }

  ngOnInit() {
    this.itemId = this.route.snapshot.params.id;
    this.itemService.getItem(this.itemId).subscribe(
      (response: any) => {
        this.item = response;
      },
      (error) => {
        console.error(error);
      }
    );
  }
}
