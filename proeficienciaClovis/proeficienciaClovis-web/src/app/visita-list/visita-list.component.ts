import { Component, OnInit } from '@angular/core';
import { VisitaService } from '../visita.service';
import { Visita } from '../visita.model';
import { CommonModule } from '@angular/common';
import { Router, RouterModule } from '@angular/router';

@Component({
  selector: 'app-visita-list',
  standalone: true,
  imports: [CommonModule, RouterModule],
  templateUrl: './visita-list.component.html',
  styleUrls: ['./visita-list.component.scss']
})
export class VisitaListComponent implements OnInit {
  visitas: Visita[] = [];

  constructor(private visitaService: VisitaService, private router: Router) {}

  ngOnInit(): void {
    this.loadVisitas();
  }

  loadVisitas(): void {
    this.visitaService.getVisitas().subscribe(data => {
      this.visitas = data;
    });
  }

  deleteVisita(id: string | undefined): void {
    if (!id) return;
    if (confirm('Tem certeza que deseja apagar esta visita?')) {
      this.visitaService.deleteVisita(id).subscribe(() => {
        this.loadVisitas();
      });
    }
  }
}
