// server.js
import express from "express";
import mysql from "mysql2";
import cors from "cors";
import salonsRoutes from "./routes/salons.js";

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "12345678",
  database: "salon_app",
});

// Route: Lấy danh sách stylist theo salonId
app.get("/api/stylists", (req, res) => {
  const salonId = req.query.salonId;

  if (!salonId) {
    return res.status(400).json({ error: "Thiếu salonId" });
  }

  const sql = "SELECT * FROM stylists WHERE salon_id = ?";
  db.query(sql, [salonId], (err, results) => {
    if (err) {
      console.error("Lỗi khi truy vấn stylist:", err);
      return res.status(500).json({ error: "Lỗi server" });
    }

    res.json(results);
  });
});

// Route lấy salon theo id
app.get("/api/salons/:id", (req, res) => {
  const salonId = req.params.id;
  const sql = "SELECT * FROM salons WHERE id = ?";

  db.query(sql, [salonId], (err, results) => {
    if (err) {
      console.error("Lỗi SQL:", err.sqlMessage || err.message);
      return res.status(500).json({ error: "Database error" });
    }
    if (results.length === 0) {
      return res.status(404).json({ error: "Salon không tồn tại" });
    }
    res.json(results[0]);
  });
});

app.get("/api/salons/:id/hairstyles", (req, res) => {
  const salonId = req.params.id;
  const sql = "SELECT * FROM hairstyles WHERE salon_id = ?";
  db.query(sql, [salonId], (err, results) => {
    if (err) {
      console.error("Lỗi SQL:", err);
      return res.status(500).json({ error: "Lỗi truy vấn database" });
    }
    res.json(results);
  });
});

// API lấy 4 salon ngẫu nhiên hoặc theo keyword
app.get("/api/salons", (req, res) => {
  const { keyword, id } = req.query;

  if (id) {
    const sql = `SELECT * FROM salons WHERE id = ?`;
    db.query(sql, [id], (err, results) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ error: "Database error" });
      }
      res.json(results[0] || null);
    });
  } else if (keyword) {
    const sql = `SELECT * FROM salons WHERE address LIKE ? OR name LIKE ?`;
    const params = [`%${keyword}%`, `%${keyword}%`];
    db.query(sql, params, (err, results) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ error: "Database error" });
      }
      res.json(results);
    });
  } else {
    // ✅ Trả về tất cả salon thay vì 8 ngẫu nhiên
    const sql = `SELECT * FROM salons`;
    db.query(sql, (err, results) => {
      if (err) {
        console.error(err);
        return res.status(500).json({ error: "Database error" });
      }
      res.json(results);
    });
  }
});

app.use("/api/salons", salonsRoutes);

app.listen(3000, () => {
  console.log("Server đang chạy ở http://localhost:3000");
});

app.get("/api/test", (req, res) => {
  res.json({ message: "API hoạt động bình thường" });
});
