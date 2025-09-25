import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Visita } from './visita.model';

@Injectable({
  providedIn: 'root'
})
export class VisitaService {
  // The proxy will forward requests from /api to your C# backend
  private apiUrl = '/api/visitas';

  constructor(private http: HttpClient) { }

  // READ (All)
  getVisitas(): Observable<Visita[]> {
    return this.http.get<Visita[]>(this.apiUrl);
  }

  // READ (by Id)
  getVisita(id: string): Observable<Visita> {
    return this.http.get<Visita>(`${this.apiUrl}/${id}`);
  }

  // CREATE
  createVisita(visita: Visita): Observable<Visita> {
    return this.http.post<Visita>(this.apiUrl, visita);
  }

  // UPDATE
  updateVisita(id: string, visita: Visita): Observable<void> {
    return this.http.put<void>(`${this.apiUrl}/${id}`, visita);
  }

  // DELETE
  deleteVisita(id: string): Observable<void> {
    return this.http.delete<void>(`${this.apiUrl}/${id}`);
  }
}
