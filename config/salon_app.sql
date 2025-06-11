USE salon_app;

DROP TABLE IF EXISTS salons;

CREATE TABLE salons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    address TEXT,
    phone VARCHAR(15),
    image_url TEXT,
    rating FLOAT DEFAULT 5.0,
    distance FLOAT DEFAULT 1.0
);
INSERT INTO salons (name, address, phone, image_url, rating, distance)
VALUES 
('Salon C', '567 Lê Văn Sỹ, Q3, TP.HCM', '0909000002', 'https://via.placeholder.com/60', 4.7, 1.2),
('Salon D', '68 Lê Văn Sỹ, Q3, TP.HCM', '0909000002', 'https://via.placeholder.com/60', 4.7, 1.2),
('Salon A', '123 Nguyễn Văn Linh, Q7, TP.HCM', '0909000001', 'https://via.placeholder.com/60', 4.9, 0.6),
('Salon B', '456 Lê Văn Sỹ, Q3, TP.HCM', '0909000002', 'https://via.placeholder.com/60', 4.7, 1.2),
('Salon E', '456 Lê Văn Sỹ, Q3, TP.HCM', '0909000002', 'https://via.placeholder.com/60', 4.7, 1.2),
('Salon F', '456 Lê Văn Sỹ, Q3, TP.HCM', '0909000002', 'https://via.placeholder.com/60', 4.7, 1.2),
('Salon G', '456 Lê Văn Sỹ, Q3, TP.HCM', '0909000002', 'https://via.placeholder.com/60', 4.7, 1.2),
('Salon H', '456 Lê Văn Sỹ, Q3, TP.HCM', '0909000002', 'https://via.placeholder.com/60', 4.7, 1.2);

DROP TABLE IF EXISTS stylists;

CREATE TABLE stylists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salon_id INT,
    name VARCHAR(100),
    specialization TEXT,
    experience_years INT,
    avatar_url TEXT,
    phone VARCHAR(15),
    FOREIGN KEY (salon_id) REFERENCES salons(id) ON DELETE CASCADE
);
-- Salon 1
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(1, 'Nguyễn Văn A', 'Cắt tóc nam, uốn nhẹ', 5, 'https://via.placeholder.com/60', '0909000011'),
(1, 'Trần Thị B', 'Nhuộm sáng, tẩy tóc', 3, 'https://via.placeholder.com/60', '0909000012'),
(1, 'Hoàng Minh C', 'Cạo fade, tattoo tóc', 4, 'https://via.placeholder.com/60', '0909000015'),
(1, 'Lê Quốc D', 'Cắt tóc undercut nam', 6, 'https://via.placeholder.com/60', '0909000016'),
(1, 'Phạm Thị E', 'Uốn phồng chân tóc nữ', 5, 'https://via.placeholder.com/60', '0909000017');

-- Salon 2
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(2, 'Phạm Văn C', 'Cắt layer nữ, tạo kiểu', 7, 'https://via.placeholder.com/60', '0909000013'),
(2, 'Đỗ Thị F', 'Nhuộm balayage, highlight', 4, 'https://via.placeholder.com/60', '0909000018'),
(2, 'Nguyễn Thị G', 'Tạo kiểu Hàn Quốc', 5, 'https://via.placeholder.com/60', '0909000019'),
(2, 'Trịnh Văn H', 'Cắt tóc nam phong cách châu Âu', 3, 'https://via.placeholder.com/60', '0909000020'),
(2, 'Lê Thị I', 'Uốn setting, duỗi cúp', 6, 'https://via.placeholder.com/60', '0909000021');

-- Salon 3
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(3, 'Lê Thị D', 'Uốn setting, nhuộm Hàn Quốc', 6, 'https://via.placeholder.com/60', '0909000014'),
(3, 'Trần Văn J', 'Cạo đầu, cắt buzz', 4, 'https://via.placeholder.com/60', '0909000022'),
(3, 'Ngô Thị K', 'Tóc bob, uốn chữ C', 5, 'https://via.placeholder.com/60', '0909000023'),
(3, 'Phan Văn L', 'Cắt mohican, tattoo tóc', 7, 'https://via.placeholder.com/60', '0909000024'),
(3, 'Đặng Thị M', 'Nhuộm pastel, tạo kiểu trẻ trung', 3, 'https://via.placeholder.com/60', '0909000025');

-- Salon 4
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(4, 'Lý Văn N', 'Cắt fade, tạo kiểu nam tính', 6, 'https://via.placeholder.com/60', '0909000026'),
(4, 'Vũ Thị O', 'Duỗi thẳng tự nhiên', 5, 'https://via.placeholder.com/60', '0909000027'),
(4, 'Phạm Văn P', 'Tóc pixie cá tính', 4, 'https://via.placeholder.com/60', '0909000028'),
(4, 'Nguyễn Thị Q', 'Tóc layer Hàn Quốc nữ', 7, 'https://via.placeholder.com/60', '0909000029'),
(4, 'Hoàng Văn R', 'Cạo đầu, tattoo nghệ thuật', 5, 'https://via.placeholder.com/60', '0909000030');

-- Salon 5
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(5, 'Trần Thị S', 'Uốn xoăn sóng nước', 4, 'https://via.placeholder.com/60', '0909000031'),
(5, 'Đỗ Văn T', 'Cắt tóc nam classic', 6, 'https://via.placeholder.com/60', '0909000032'),
(5, 'Lê Thị U', 'Highlight sáng màu', 3, 'https://via.placeholder.com/60', '0909000033'),
(5, 'Phan Văn V', 'Tóc dập xù, cá tính', 5, 'https://via.placeholder.com/60', '0909000034'),
(5, 'Nguyễn Thị W', 'Duỗi phồng tự nhiên', 4, 'https://via.placeholder.com/60', '0909000035');

-- Salon 6
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(6, 'Hoàng Văn X', 'Cắt tóc mohican nam', 7, 'https://via.placeholder.com/60', '0909000036'),
(6, 'Lý Thị Y', 'Uốn xoăn lọn to', 5, 'https://via.placeholder.com/60', '0909000037'),
(6, 'Trịnh Văn Z', 'Nhuộm ombre, balayage', 4, 'https://via.placeholder.com/60', '0909000038'),
(6, 'Nguyễn Thị AA', 'Tạo kiểu cô dâu', 6, 'https://via.placeholder.com/60', '0909000039'),
(6, 'Phạm Văn BB', 'Cạo đầu nghệ thuật', 3, 'https://via.placeholder.com/60', '0909000040');

-- Salon 7
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(7, 'Đỗ Văn CC', 'Cắt tóc Hàn Quốc nam', 4, 'https://via.placeholder.com/60', '0909000041'),
(7, 'Trần Thị DD', 'Uốn sóng lơi', 5, 'https://via.placeholder.com/60', '0909000042'),
(7, 'Lê Văn EE', 'Cắt tóc mullet nam', 6, 'https://via.placeholder.com/60', '0909000043'),
(7, 'Phạm Thị FF', 'Nhuộm highlight pastel', 4, 'https://via.placeholder.com/60', '0909000044'),
(7, 'Nguyễn Văn GG', 'Cắt kiểu Nhật Bản nam', 5, 'https://via.placeholder.com/60', '0909000045');

-- Salon 8
INSERT INTO stylists (salon_id, name, specialization, experience_years, avatar_url, phone) VALUES
(8, 'Trịnh Văn HH', 'Cắt kiểu Pháp nam', 7, 'https://via.placeholder.com/60', '0909000046'),
(8, 'Lý Thị II', 'Uốn lọn xoăn dài', 6, 'https://via.placeholder.com/60', '0909000047'),
(8, 'Phạm Văn JJ', 'Cạo đầu fade nghệ thuật', 4, 'https://via.placeholder.com/60', '0909000048'),
(8, 'Đỗ Thị KK', 'Nhuộm thời trang', 5, 'https://via.placeholder.com/60', '0909000049'),
(8, 'Nguyễn Văn LL', 'Tóc layer nam, nữ', 3, 'https://via.placeholder.com/60', '0909000050');

DROP TABLE IF EXISTS hairstyles;

CREATE TABLE hairstyles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salon_id INT,                          
    name VARCHAR(100) NOT NULL,            
    description TEXT,                      
    price DECIMAL(10, 2) NOT NULL,         
    image_url TEXT,                        
    FOREIGN KEY (salon_id) REFERENCES salons(id) ON DELETE CASCADE
);
-- Salon 1
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(1, 'Cắt gọn nam', 'Kiểu tóc đơn giản, dễ chăm sóc', 120000, 'https://via.placeholder.com/80'),
(1, 'Undercut hiện đại', 'Phong cách trẻ trung, cá tính', 180000, 'https://via.placeholder.com/80'),
(1, 'Mohican ngắn', 'Thích hợp cho nam giới năng động', 150000, 'https://via.placeholder.com/80'),
(1, 'Fade cao', 'Cạo sát hai bên, để dài phía trên', 170000, 'https://via.placeholder.com/80'),
(1, 'Uốn nhẹ nam', 'Tạo sóng nhẹ cho tóc nam', 200000, 'https://via.placeholder.com/80'),
(1, 'Tóc layer nữ', 'Phù hợp cho tóc dài, ôm mặt', 300000, 'https://via.placeholder.com/80'),
(1, 'Duỗi thẳng tự nhiên', 'Làm tóc suôn mượt, tự nhiên', 250000, 'https://via.placeholder.com/80'),
(1, 'Nhuộm nâu tây', 'Tông màu trầm, thời thượng', 400000, 'https://via.placeholder.com/80'),
(1, 'Tóc bob ngắn', 'Trẻ trung, cá tính cho nữ', 280000, 'https://via.placeholder.com/80'),
(1, 'Uốn xoăn đuôi', 'Tạo độ phồng nhẹ nhàng phần đuôi', 320000, 'https://via.placeholder.com/80');

-- Salon 2
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(2, 'Uốn sóng nữ', 'Dành cho tóc dài, tạo sóng nhẹ tự nhiên', 350000, 'https://via.placeholder.com/80'),
(2, 'Nhuộm highlight', 'Tạo điểm nhấn màu sắc', 400000, 'https://via.placeholder.com/80'),
(2, 'Duỗi phồng chân tóc', 'Cho tóc mỏng trông dày hơn', 300000, 'https://via.placeholder.com/80'),
(2, 'Tóc pixie', 'Kiểu tóc ngắn cá tính', 270000, 'https://via.placeholder.com/80'),
(2, 'Cắt layer Hàn Quốc', 'Dành cho tóc trung bình đến dài', 330000, 'https://via.placeholder.com/80'),
(2, 'Uốn cụp chữ C', 'Làm tóc cụp ôm mặt nhẹ nhàng', 310000, 'https://via.placeholder.com/80'),
(2, 'Nhuộm ombre', 'Chuyển màu tự nhiên, nổi bật', 450000, 'https://via.placeholder.com/80'),
(2, 'Tóc xoăn mì tôm', 'Tạo kiểu xoăn sợi nhỏ', 370000, 'https://via.placeholder.com/80'),
(2, 'Cạo fade nam', 'Phong cách barber hiện đại', 180000, 'https://via.placeholder.com/80'),
(2, 'Tóc bob layer', 'Trẻ trung, dễ chăm sóc', 290000, 'https://via.placeholder.com/80');

-- Salon 3
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(3, 'Uốn setting', 'Uốn giữ nếp lâu dài', 400000, 'https://via.placeholder.com/80'),
(3, 'Nhuộm xám khói', 'Tông màu lạnh, cá tính', 500000, 'https://via.placeholder.com/80'),
(3, 'Duỗi cúp đuôi', 'Làm đuôi tóc cụp vào nhẹ nhàng', 300000, 'https://via.placeholder.com/80'),
(3, 'Tóc dài layer', 'Phù hợp mọi khuôn mặt', 320000, 'https://via.placeholder.com/80'),
(3, 'Cắt tỉa nam basic', 'Kiểu đơn giản, lịch sự', 140000, 'https://via.placeholder.com/80'),
(3, 'Uốn sóng nước', 'Tạo sóng nhẹ tự nhiên', 380000, 'https://via.placeholder.com/80'),
(3, 'Nhuộm xanh rêu', 'Phong cách trẻ trung, lạ mắt', 450000, 'https://via.placeholder.com/80'),
(3, 'Tóc tomboy', 'Kiểu cắt ngắn mạnh mẽ cho nữ', 250000, 'https://via.placeholder.com/80'),
(3, 'Tóc bob Nhật', 'Phong cách tối giản, dễ chăm sóc', 280000, 'https://via.placeholder.com/80'),
(3, 'Uốn phồng chân', 'Tạo độ bồng bềnh tự nhiên', 310000, 'https://via.placeholder.com/80');

-- Salon 4
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(4, 'Fade classic', 'Kiểu cổ điển dành cho nam', 160000, 'https://via.placeholder.com/80'),
(4, 'Undercut vuốt ngược', 'Lịch lãm, phù hợp công sở', 190000, 'https://via.placeholder.com/80'),
(4, 'Tóc lob dài', 'Kiểu dài ngang vai', 290000, 'https://via.placeholder.com/80'),
(4, 'Uốn lọn to', 'Phù hợp tóc dày', 400000, 'https://via.placeholder.com/80'),
(4, 'Nhuộm nâu hạt dẻ', 'Tông màu nhẹ nhàng', 380000, 'https://via.placeholder.com/80'),
(4, 'Tóc ngắn cá tính', 'Kiểu ngắn phong cách tomboy', 270000, 'https://via.placeholder.com/80'),
(4, 'Duỗi thẳng tự nhiên', 'Suôn thẳng mềm mại', 250000, 'https://via.placeholder.com/80'),
(4, 'Uốn xoăn nhẹ đuôi', 'Tạo độ bồng bềnh cho tóc dài', 350000, 'https://via.placeholder.com/80'),
(4, 'Nhuộm highlight hồng', 'Phong cách nổi bật', 450000, 'https://via.placeholder.com/80'),
(4, 'Tóc layer cắt ngắn', 'Tạo độ phồng cho tóc mỏng', 280000, 'https://via.placeholder.com/80');

-- Salon 5
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(5, 'Uốn xoăn sóng nước', 'Tóc dài xoăn nhẹ tự nhiên', 370000, 'https://via.placeholder.com/80'),
(5, 'Cắt classic nam', 'Kiểu nam cổ điển đơn giản', 150000, 'https://via.placeholder.com/80'),
(5, 'Tóc bob layer', 'Trẻ trung, phù hợp mặt tròn', 300000, 'https://via.placeholder.com/80'),
(5, 'Nhuộm pastel tím', 'Phong cách Hàn Quốc nổi bật', 480000, 'https://via.placeholder.com/80'),
(5, 'Duỗi cúp đuôi', 'Phù hợp tóc thẳng dài', 320000, 'https://via.placeholder.com/80'),
(5, 'Uốn lọn nhỏ', 'Kiểu xoăn vintage', 350000, 'https://via.placeholder.com/80'),
(5, 'Tóc layer ngắn', 'Dành cho tóc mỏng, ôm sát mặt', 290000, 'https://via.placeholder.com/80'),
(5, 'Tóc tomboy cá tính', 'Kiểu cắt cực ngắn cho nữ', 260000, 'https://via.placeholder.com/80'),
(5, 'Nhuộm balayage', 'Chuyển màu tự nhiên', 500000, 'https://via.placeholder.com/80'),
(5, 'Tóc pixie xoăn', 'Phong cách năng động', 310000, 'https://via.placeholder.com/80');

-- Salon 6
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(6, 'Fade thấp', 'Kiểu nam cạo thấp hai bên', 170000, 'https://via.placeholder.com/80'),
(6, 'Tóc bob dài', 'Kiểu dài đến cằm, cá tính', 290000, 'https://via.placeholder.com/80'),
(6, 'Uốn sóng lơi', 'Tạo vẻ tự nhiên, nhẹ nhàng', 350000, 'https://via.placeholder.com/80'),
(6, 'Nhuộm nâu socola', 'Tông màu trầm, dễ phối đồ', 400000, 'https://via.placeholder.com/80'),
(6, 'Cắt undercut', 'Kiểu nam hiện đại', 180000, 'https://via.placeholder.com/80'),
(6, 'Tóc layer Nhật Bản', 'Phong cách tối giản', 310000, 'https://via.placeholder.com/80'),
(6, 'Uốn cụp đuôi', 'Phù hợp tóc ngang vai', 300000, 'https://via.placeholder.com/80'),
(6, 'Tóc lob xoăn nhẹ', 'Làm xoăn nhẹ kiểu dài', 330000, 'https://via.placeholder.com/80'),
(6, 'Nhuộm ánh đồng', 'Tông ấm, nổi bật dưới nắng', 450000, 'https://via.placeholder.com/80'),
(6, 'Duỗi thẳng basic', 'Tóc thẳng tự nhiên', 250000, 'https://via.placeholder.com/80');

-- Salon 7
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(7, 'Tóc buzz nam', 'Kiểu cắt sát đơn giản', 140000, 'https://via.placeholder.com/80'),
(7, 'Tóc layer nữ dài', 'Tầng tóc mượt mà', 320000, 'https://via.placeholder.com/80'),
(7, 'Uốn xoăn vintage', 'Phong cách cổ điển', 400000, 'https://via.placeholder.com/80'),
(7, 'Nhuộm xanh dương', 'Tone màu cá tính', 500000, 'https://via.placeholder.com/80'),
(7, 'Duỗi cụp tự nhiên', 'Ôm nhẹ khuôn mặt', 300000, 'https://via.placeholder.com/80'),
(7, 'Tóc tomboy layer', 'Kiểu ngắn cực kỳ cá tính', 280000, 'https://via.placeholder.com/80'),
(7, 'Tóc lob dài xoăn nhẹ', 'Phù hợp mọi gương mặt', 340000, 'https://via.placeholder.com/80'),
(7, 'Cắt mullet nam', 'Phong cách mới lạ, cá tính', 190000, 'https://via.placeholder.com/80'),
(7, 'Nhuộm highlight đỏ', 'Phá cách và nổi bật', 450000, 'https://via.placeholder.com/80'),
(7, 'Uốn đuôi cúp', 'Kiểu nhẹ nhàng cho tóc dài', 320000, 'https://via.placeholder.com/80');

-- Salon 8
INSERT INTO hairstyles (salon_id, name, description, price, image_url) VALUES
(8, 'Tóc fade vuốt dựng', 'Kiểu barber phong cách', 180000, 'https://via.placeholder.com/80'),
(8, 'Tóc bob thẳng', 'Kiểu classic nữ tính', 300000, 'https://via.placeholder.com/80'),
(8, 'Uốn sóng nước nhẹ', 'Dành cho tóc dài', 370000, 'https://via.placeholder.com/80'),
(8, 'Nhuộm ánh tím', 'Tone màu lạ, cuốn hút', 480000, 'https://via.placeholder.com/80'),
(8, 'Duỗi cúp phồng', 'Dành cho tóc mỏng', 310000, 'https://via.placeholder.com/80'),
(8, 'Tóc layer phồng', 'Tạo độ dày tự nhiên', 330000, 'https://via.placeholder.com/80'),
(8, 'Uốn xoăn đuôi nhẹ', 'Kiểu Hàn Quốc dễ thương', 340000, 'https://via.placeholder.com/80'),
(8, 'Tóc tomboy ngắn', 'Kiểu mạnh mẽ, trẻ trung', 270000, 'https://via.placeholder.com/80'),
(8, 'Nhuộm balayage bạch kim', 'Tone sáng, cực nổi bật', 520000, 'https://via.placeholder.com/80'),
(8, 'Uốn cụp layer', 'Tạo kiểu ôm mặt', 350000, 'https://via.placeholder.com/80');

SELECT * FROM salons
WHERE address LIKE CONCAT('%', ?, '%')
ORDER BY distance ASC;


SELECT * FROM salons ORDER BY id DESC LIMIT 5;

SELECT * FROM salons WHERE id = 8;

SELECT * FROM hairstyles;

SELECT * FROM salons;

SELECT * FROM stylists;





