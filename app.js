/************************************ MOVIES SERVER*************************************/

/************
    IMPORT
************/
const express = require('express')                           // Import del modulo Express
const cors = require('cors');                                // Import del middleware cors
const chalk = require('chalk');                              // Import del pacchetto chalk
const moviesRouter = require('./routers/moviesRouter');      // Import del router che gestisce le rotte dei film
const errorServer = require('./middlewares/errorServer');    // Import del middleware errorServer
const notFound = require('./middlewares/notFound');          // Import del middleware notFound
const imagePath = require('./middlewares/imagePath');        // Import del middleware imagePath
const errorMulter = require('./middlewares/errorMulter');    // Import del middleware errorMulter per gestire l'errore del formato immagine non valido

/***************************
    CONFIGURAZIONE EXPRESS
****************************/
const app = express();           // Inizializzazione dell'app Express
const port = 3000;               // Definizione della porta su cui il server deve rimanere in ascolto
const allowedOrigins = [
    'http://localhost:5173',
    'http://localhost:5174',
    'http://localhost:5175'
];

/***************
    MIDDLEWARE
****************/
app.use(cors({ origin: allowedOrigins }))      // Registrazione del middleware cors per consentire al server di specificare quali origini possono accedere alle sue risorse
app.use(imagePath);                                     // Registrazione del middleware per gestire dinamicamente il path delle immagini
app.use(express.static('public'));                      // Registrazione del middleware per rendere accessibili i file statici (es. immagini) contenuti nella cartella "public"
app.use(express.json());                                // Registrazione del middleware per leggere il body delle richieste HTTP
app.use('/api/movies', moviesRouter);                   // Registrazione del router con prefisso /api 
app.use(errorMulter);                                   // Registrazione del middleware "errorMulter" che gestisce il formato immagine non valido generato da Multer
app.use(notFound);                                      // Registrazione del middleware "notFound" che gestisce le rotte inesistenti (404 Not Found)
app.use(errorServer);                                   // Registrazione del middleware "errorServer" che gestisce gli errori interni del server 


/*********************
    AVVIO SERVER
*********************/
// Il server viene messo in ascolto sulla porta 3000
app.listen(port, () => {
    console.log(chalk.red("Server in ascolto sulla porta " + port));
})