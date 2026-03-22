BowlCraft – Bowl Konfigurator

Web-Technologien Projektarbeit WiSe 2025/2026

 Funktionen

- Landing Page mit Produkt-Infos und Preset-Bowls
- User-Registrierung und Login
- 5-stufiger Konfigurator (Basis → Protein & Gemüse → Sauce & Toppings → Zusammenfassung → Bestellung)
- 40+ Zutaten, davon 22+ in Schritt 2
- Visuelle Live-Vorschau der Bowl (SVG)
- Filter nach Vegan / Vegetarisch / Glutenfrei
- Suchfunktion für Zutaten
- Nährwertanzeige (Kalorien & Protein)
- Konfiguration speichern (eingeloggte User)
- Gespeicherte Bowls ansehen
- Gutscheincodes (BOWL10, WELCOME20, VEGAN15)
- Vorkonfigurierte Preset-Bowls als Startpunkt
- Liefer- und Bezahlprozess (PayPal, Kreditkarte, Bar, Rechnung)

# Webtechnologie_G_C

BowlCraft – Bowl Konfigurator

Web-Technologien Projektarbeit WiSe 2025/2026

 Funktionen

- Landing Page mit Produkt-Infos und Preset-Bowls
- User-Registrierung und Login
- 5-stufiger Konfigurator (Basis → Protein & Gemüse → Sauce & Toppings → Zusammenfassung → Bestellung)
- 40+ Zutaten, davon 22+ in Schritt 2
- Visuelle Live-Vorschau der Bowl (SVG)
- Filter nach Vegan / Vegetarisch / Glutenfrei
- Suchfunktion für Zutaten
- Nährwertanzeige (Kalorien & Protein)
- Konfiguration speichern (eingeloggte User)
- Gespeicherte Bowls ansehen
- Gutscheincodes (BOWL10, WELCOME20, VEGAN15)
- Vorkonfigurierte Preset-Bowls als Startpunkt
- Liefer- und Bezahlprozess (PayPal, Kreditkarte, Bar, Rechnung)

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
