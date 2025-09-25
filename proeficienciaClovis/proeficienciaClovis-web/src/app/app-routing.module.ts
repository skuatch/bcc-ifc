import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {VisitaListComponent} from "./visita-list/visita-list.component";
import {VisitaFormComponent} from "./visita-form/visita-form.component";
export const routes: Routes = [
  { path: '', redirectTo: '/visitas', pathMatch: 'full' },
  { path: 'visitas', component: VisitaListComponent },
  { path: 'visitas/new', component: VisitaFormComponent },
  { path: 'visitas/edit/:id', component: VisitaFormComponent }
];
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {

}
