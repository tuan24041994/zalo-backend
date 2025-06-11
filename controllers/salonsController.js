// controllers/salonsController.js

import db from '../config/db.js';

// Lấy danh sách salon
function getSalons(req, res) {
  const keyword = req.query.keyword;

  let sql = '';
  let params = [];

  if (keyword) {
    sql = `SELECT * FROM salons WHERE address LIKE ? OR name LIKE ? ORDER BY distance ASC`;
    params = [`%${keyword}%`, `%${keyword}%`];
  } else {
    sql = `SELECT * FROM salons ORDER BY RAND() LIMIT 4`;
  }

  db.query(sql, params, (err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
}

// Lấy salon theo ID
function getSalonById(req, res) {
  const id = req.params.id;

  const sql = `SELECT * FROM salons WHERE id = ? LIMIT 1`;
  db.query(sql, [id], (err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    if (results.length === 0) {
      return res.status(404).json({ message: `Không tìm thấy salon với id: ${id}` });
    }
    res.json(results[0]);
  });
}

// Lấy stylist theo salon ID
function getStylistsBySalonId(req, res) {
  const salonId = req.params.id;
  const query = 'SELECT * FROM stylists WHERE salon_id = ?';
  db.query(query, [salonId], (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
}

// Lấy kiểu tóc theo salon ID
function getHairstylesBySalonId(req, res) {
  const salonId = req.params.id;
  const sql = 'SELECT * FROM hairstyles WHERE salon_id = ?';
  db.query(sql, [salonId], (err, results) => {
    if (err) {
      console.error('Lỗi khi truy vấn kiểu tóc:', err);
      return res.status(500).json({ error: 'Lỗi truy vấn kiểu tóc' });
    }
    res.json(results);
  });
}

export default {
  getSalons,
  getSalonById,
  getStylistsBySalonId,
  getHairstylesBySalonId,
};
