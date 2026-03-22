
## Installation mit XAMPP

1. XAMPP   starten (Apache + MySQL)
2. Projektordner nach `C:\xampp\htdocs\projekt\` kopieren
3. phpMyAdmin öffnen: `http://localhost/phpmyadmin`
4. Neue Datenbank erstellen: `bowl_konfigurator`
5. SQL-Dump importieren: `db/dump.sql`
6. `includes/db.php` öffnen und Passwort anpassen:
```php
   $host = 'localhost';
   $user = 'root';
   $pass = 'root';
```
7. Webapp aufrufen: `http://localhost/projekt/`


## Datenbank

- Host: `localhost` (XAMPP) 
- Datenbank: `bowl_konfigurator`
- User: `root`
- Passwort: 'root'


- Frontend: Vanilla JavaScript + Bootstrap 5.3
- Backend: PHP 8.2 (ohne Framework)
- Datenbank: MySQL 8.0
