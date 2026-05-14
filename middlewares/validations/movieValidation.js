/************
    IMPORT
************/
const { body, param } = require('express-validator');


/****************
    VALIDAZIONI
****************/

// Validazione ID film
const validateMovieId = [
    param('id')
        .isInt({ min: 1 })
        .withMessage('ID non valido')
];

// Validazione nuova recensione
const validateReview = [
    body('name')
        .trim()
        .notEmpty()
        .withMessage('Il nome è obbligatorio'),

    body('text')
        .trim()
        .notEmpty()
        .withMessage('Il testo della recensione è obbligatorio')
        .bail()                                                             // Interrompe le validazioni successive se il campo è vuoto
        .isLength({ min: 5 })
        .withMessage('La recensione deve contenere almeno 5 caratteri'),
        
    body('vote')
        .isInt({ min: 1, max: 5 })
        .withMessage('Il voto deve essere un numero da 1 a 5')
];

// Validazione nuovo film
const validateMovie = [
    body('title')
        .trim()
        .notEmpty()
        .withMessage('Il titolo è obbligatorio'),

    body('director')
        .trim()
        .notEmpty()
        .withMessage('Il regista è obbligatorio'),

    body('abstract')
        .trim()
        .notEmpty()
        .withMessage('La descrizione è obbligatoria')
];


/************
    EXPORT
************/
module.exports = { validateMovieId, validateMovie, validateReview };