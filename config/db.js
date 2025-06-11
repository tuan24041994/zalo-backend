// config/db.js
import mysql from 'mysql2';

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '12345678', // Đổi nếu có mật khẩu khác
  database: 'salon_app',
});

connection.connect(err => {
  if (err) {
    console.error('Lỗi kết nối database:', err.stack);
    return;
  }
  console.log('✅ Đã kết nối MySQL thành công!');
});

export default connection;
