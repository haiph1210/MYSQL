DROP DATABASE university;

CREATE DATABASE IF NOT EXISTS university;
USE university;
-- Bảng Lớp Học 
CREATE TABLE class_room( 
    id int PRIMARY key,
    class_name VARCHAR(50)
);
-- Bảng Sinh Viên
CREATE TABLE `student`(
    id int PRIMARY Key,
    `name` VARCHAR(50),
    age DATE,
    address VARCHAR(50)
);
-- Bảng Điểm 
CREATE TABLE `point`(
    id int PRIMARY Key,
    
);
-- ALTER TABLE + tên Bảng + add column + bảng mới + kiểu dữ liệu; (Thêm Bảng) 
-- ALTER TABLE + tên Bảng + drop column + bảng đã có;   (xóa bảng) 
-- ALTER TABLE + tên Bảng + change + tên cột cũ + tên cột mới + kiểu dữ liệu; (thay đổi tên bảng)

ALTER TABLE `student` ADD COLUMN score FLOAT ; 
ALTER TABLE `student` DROP COLUMN score;
ALTER TABLE `student` change `name` ten NVARCHAR(50);



