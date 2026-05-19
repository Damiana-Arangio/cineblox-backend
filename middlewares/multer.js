/************
    IMPORT
************/

const multer = require('multer');  // Import del middleware multer per gestire i file in ingresso

/************************
    VALIDAZIONE FILE
*************************/

// Controlla che il file caricato sia jpg, jpeg, png o webp
const fileFilter = (req, file, cb) => {

    const formatiAccettati = ['image/jpeg', 'image/png', 'image/webp'];

    if (formatiAccettati.includes(file.mimetype)) {
        cb(null, true);
    } else {
        cb(new Error('Formato immagine non valido!'), false);
    }
};

/****************************
    CONFIGURAZIONE STORAGE
*****************************/
const storage = multer.diskStorage({

    // Directory di destinazione in cui salvare i file caricati
     destination: "./public/imgs/",
    
    // Definizione del nome con cui salvare il file (timestamop + nome originale)
    filename: (req, file, cb) => {
        const uniqueName = `${Date.now()}-${file.originalname}`;
        cb(null, uniqueName); // Passiamo a Multer il nome finale del file

    },
});

/****************
    MIDDLEWARE
****************/

// Creazione middleware multer
const upload = multer({ storage, fileFilter }); 

/************
    EXPORT
************/
module.exports = upload;
