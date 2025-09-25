import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VisitaFormComponent } from './visita-form.component';

describe('VisitaFormComponent', () => {
  let component: VisitaFormComponent;
  let fixture: ComponentFixture<VisitaFormComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [VisitaFormComponent]
    });
    fixture = TestBed.createComponent(VisitaFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
