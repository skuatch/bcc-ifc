import {ApplicationConfig, NgModule} from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import {AppRoutingModule, routes} from './app-routing.module';
import { AppComponent } from './app.component';
import { VisitaListComponent } from './visita-list/visita-list.component';
import { VisitaFormComponent } from './visita-form/visita-form.component';
import {provideRouter} from "@angular/router";
import {provideHttpClient} from "@angular/common/http";



@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    VisitaListComponent,
    VisitaFormComponent
  ],
  providers: [

    provideRouter(routes),
    provideHttpClient()
  ],
  bootstrap: [AppComponent]
})

export class AppModule { }
