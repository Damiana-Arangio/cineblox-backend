/************
    IMPORT
************/
const { validationResult } = require('express-validator');


/************************
    GESTIONE VALIDAZIONI
************************/

function errorValidation(req, res, next) {

    // Recupera la lista degli errori generati da express-validator
    const errors = validationResult(req).array();

    // Se la richiesta contiene un form con file e req.file non esiste,
    // significa che non è stata caricata nessuna immagine
    if (req.is('multipart/form-data') && !req.file) {
        errors.push({
            msg: "L'immagine è obbligatoria",
            path: "image",
            location: "file"
        });
    }

    // Se ci sono errori provenienti da movieValidation, blocca la richiesta e restituisce errore 400
    if (errors.length > 0) {
        return res.status(400).json({ errors });
    }

    // Se non ci sono errori, passa al middleware/controller successivo
    next();
}


/************
    EXPORT
************/
module.exports = errorValidation;