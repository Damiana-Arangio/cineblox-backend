/************
    IMPORT
************/
const express = require('express')                                              // Import Express
const movieController = require('../controllers/movieController')               // Import Controller dei film
const upload = require('../middlewares/multer');                                // Import middleware multer per la gestione dei file in ingresso
const movieValidation = require('../middlewares/validations/movieValidation');  // Import oggetto con le validazioni dei film
const handleValidationErrors = require('../middlewares/handleValidationErrors'); // Import middleware per la gestione degli errori di validazione

/*************
    ROUTER
*************/
const router = express.Router() // Inizializzazione router express

// Definizione delle rotte 
router.get('/', movieController.index);                                                                
router.get('/:id', movieValidation.validateMovieId, handleValidationErrors, movieController.show);     
router.post('/:id/reviews', movieValidation.validateMovieId, movieValidation.validateReview, handleValidationErrors, movieController.storeReview);
router.post('/', upload.single('image'), movieValidation.validateMovie, handleValidationErrors, movieController.storeMovie);   
 
/************
    EXPORT
************/
module.exports = router; // Export del router