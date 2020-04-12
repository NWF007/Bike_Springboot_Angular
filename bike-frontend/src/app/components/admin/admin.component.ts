import { Component, OnInit } from '@angular/core';
import { BikeService } from '../../services/bike.service';
import { Observable } from 'rxjs';
import { Bike } from 'src/app/common/bike'

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {

   public bikes;

  //bikes : Bike[];

  constructor(private bikeService: BikeService) { }

  ngOnInit() {
    this.getBikes();
  }

  getBikes() {
    this.bikeService.getBikes().subscribe(
      data => { this.bikes = data },
      err => console.log(err),
      () => console.log('bikes loaded')
    );
  }

}
