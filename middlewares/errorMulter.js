/****************
    MIDDLEWARE  
*****************/

// Funzione che gestisce l'errore generato da Multer in caso di formato immagine non valido
function errorMulter(err, req, res, next) {

    if (err.message === 'Formato immagine non valido') {
        return res.status(400).json(
            { error: err.message }
        );
    }

    // Se l'errore non riguarda il formato immagine, passa l'errore al middleware successivo
    next(err);
}

/************
    EXPORT
************/
module.exports = errorMulter;