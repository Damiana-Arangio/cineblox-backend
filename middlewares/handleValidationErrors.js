/************
    IMPORT
************/
const { validationResult } = require('express-validator');

/************************
    GESTIONE VALIDAZIONI
************************/

function handleValidationErrors(req, res, next) {

    // Recupera eventuali errori generati dalle validazioni
    const errors = validationResult(req);

    // Se ci sono errori, blocca la richiesta e restituisce errore 400
    if (!errors.isEmpty()) {
        return res.status(400).json({
            errors: errors.array()
        });
    }

    // Se non ci sono errori, passa al middleware/controller successivo
    next();
}


/************
    EXPORT
************/
module.exports = handleValidationErrors;