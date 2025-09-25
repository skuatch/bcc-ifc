import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Visita } from './visita.model';

@Injectable({
  providedIn: 'root'
})
export class VisitaService {
  private apiUrl = '/api/visitas';

  constructor(private http: HttpClient) { }

  getVisitas(): Observable<Visita[]> {
    return this.http.get<Visita[]>(this.apiUrl);
  }

  getVisita(id: string): Observable<Visita> {
    return this.http.get<Visita>(`${this.apiUrl}/${id}`);
  }

  createVisita(visita: Visita): Observable<Visita> {
    return this.http.post<Visita>(this.apiUrl, visita);
  }

  updateVisita(id: string, visita: Visita): Observable<void> {
    return this.http.put<void>(`${this.apiUrl}/${id}`, visita);
  }

  deleteVisita(id: string): Observable<void> {
    return this.http.delete<void>(`${this.apiUrl}/${id}`);
  }
}
