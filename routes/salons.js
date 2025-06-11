// routes/salons.js
import express from 'express';
import salonsController from '../controllers/salonsController.js';

const router = express.Router();

router.get('/', salonsController.getSalons);

// Thêm route lấy salon theo id
router.get('/:id', salonsController.getSalonById);

// Route lấy stylist theo salon id
router.get('/:id/stylists', salonsController.getStylistsBySalonId);

// Route hairstyle theo salon
router.get('/:id/hairstyles', salonsController.getHairstylesBySalonId);

export default router;
