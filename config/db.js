// config/db.js
import mysql from "mysql2";

// Đổi các thông tin bên dưới cho đúng với database online của bạn
const connection = mysql.createConnection({
  host: "sql100.infinityfree.com", // Ví dụ: sql123.freesqldatabase.com
  user: "if0_39204948", // Ví dụ: freemysql_abc123
  password: "binh25052004", // Password từ dịch vụ bạn dùng
  database: "if0_39204948_tuan24041994", // Ví dụ: freemysql_abc123_db
  port: 3306, // Nếu dịch vụ yêu cầu port khác, hãy đổi tại đây
});

connection.connect((err) => {
  if (err) {
    console.error("❌ Lỗi kết nối database:", err.message);
    return;
  }
  console.log("✅ Đã kết nối đến MySQL thành công!");
});

export default connection;
