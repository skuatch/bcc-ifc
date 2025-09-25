import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ReactiveFormsModule } from '@angular/forms';
import { ActivatedRoute, Router, RouterModule } from '@angular/router';
import { VisitaService } from '../visita.service';
import { Visita } from '../visita.model';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-visita-form',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule, RouterModule],
  templateUrl: './visita-form.component.html',
  styleUrls: ['./visita-form.component.scss']
})
export class VisitaFormComponent implements OnInit {
  visitaForm: FormGroup;
  isEditMode = false;
  currentVisitaId: string | null = null;

  constructor(
    private fb: FormBuilder,
    private visitaService: VisitaService,
    private router: Router,
    private route: ActivatedRoute
  ) {
    this.visitaForm = this.fb.group({
      nome: ['', Validators.required],
      lugar: ['', Validators.required],
      dataVisita: ['', Validators.required],
      descricao: ['', Validators.required],
      avaliacao: [null, [Validators.required, Validators.min(0), Validators.max(10)]]
    });
  }

  ngOnInit(): void {
    this.currentVisitaId = this.route.snapshot.paramMap.get('id');
    if (this.currentVisitaId) {
      this.isEditMode = true;
      this.visitaService.getVisita(this.currentVisitaId).subscribe(data => {
        const formattedDate = new Date(data.dataVisita).toISOString().slice(0, 16);
        this.visitaForm.patchValue({ ...data, dataVisita: formattedDate });
      });
    }
  }

  onSubmit(): void {
    if (this.visitaForm.invalid) {
      return;
    }

    const visitaData: Visita = this.visitaForm.value;

    if (this.isEditMode && this.currentVisitaId) {
      this.visitaService.updateVisita(this.currentVisitaId, { ...visitaData, id: this.currentVisitaId }).subscribe(() => {
        this.router.navigate(['/visitas']);
      });
    } else {
      this.visitaService.createVisita(visitaData).subscribe(() => {
        this.router.navigate(['/visitas']);
      });
    }
  }
}
