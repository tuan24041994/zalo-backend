// models/salonModel.js
const db = require('../config/db');

const getSalonsByLocation = (location, callback) => {
  const query = 'SELECT * FROM salons WHERE address LIKE ?';
  db.query(query, [`%${location}%`], (err, results) => {
    if (err) {
      callback(err, null);
    } else {
      callback(null, results);
    }
  });
};

module.exports = {
  getSalonsByLocation
};
