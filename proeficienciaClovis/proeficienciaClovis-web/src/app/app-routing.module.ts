import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {VisitaListComponent} from "./visita-list/visita-list.component";
import {VisitaFormComponent} from "./visita-form/visita-form.component";
export const routes: Routes = [
  // Default route redirects to the list
  { path: '', redirectTo: '/visitas', pathMatch: 'full' },
  // Route to display the list of visits
  { path: 'visitas', component: VisitaListComponent },
  // Route to create a new visit
  { path: 'visitas/new', component: VisitaFormComponent },
  // Route to edit an existing visit
  { path: 'visitas/edit/:id', component: VisitaFormComponent }
];
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {

}
