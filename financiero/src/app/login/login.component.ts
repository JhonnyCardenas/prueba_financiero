import { HttpClient } from '@angular/common/http';

interface LoginResponse {
  valid: boolean;
  message: string;
}

export class LoginComponent {
  constructor(private http: HttpClient) {}

  login(username: string, password: string) {
    this.http.post<LoginResponse>('/api/login', { username, password })
      .subscribe(response => {
        if (response.valid) {
          // El usuario es válido
        } else {
          // El usuario no es válido
        }
      });
  }
}
