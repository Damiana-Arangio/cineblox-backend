<h1 align="center">🎬 Cineblox - Backend</h1>

Backend di un'applicazione full-stack dedicata al mondo del cinema, sviluppato con **Node.js**, **Express** e **MySQL**.

Il backend espone API REST per la gestione di film, recensioni e caricamento immagini.

Frontend repository:  
[cineblox-frontend](https://github.com/Damiana-Arangio/cineblox-frontend)

---

# Implementazione backend

- Architettura REST API con Express
- Separazione tra router, controller e middleware
- Connessione database MySQL
- Query SQL con JOIN per recupero relazioni
- Gestione upload immagini con Multer
- Validazione dati tramite express-validator
- Gestione CORS per comunicazione frontend/backend
- Gestione errori centralizzata
- Utilizzo di variabili d’ambiente per configurazione server e database

# Stack

## Backend
- Node.js
- Express.js
- Multer
- express-validator
- CORS

## Database
- MySQL

---

# Setup progetto

## 1. Clona il backend

```bash
git clone https://github.com/Damiana-Arangio/cineblox-backend.git
cd cineblox-backend
npm install