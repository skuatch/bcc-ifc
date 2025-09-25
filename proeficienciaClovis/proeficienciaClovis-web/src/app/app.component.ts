import {ApplicationConfig, Component} from '@angular/core';
import {provideRouter} from "@angular/router";
import {routes} from "./app-routing.module";
import {provideHttpClient} from "@angular/common/http";

export const appConfig: ApplicationConfig = {
  providers: [
  ]
};

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'proeficienciaClovis-web';
}
