CREATE TABLE Register(
    register_id INT PRIMARY KEY AUTO_INCREMENT,
    telephone VARCHAR(10),
    otp_number VARCHAR(6)
);

INSERT INTO
    Register(telephone, otp_number)
VALUES("0996665858", "603000");

INSERT INTO
    Register(telephone, otp_number)
VALUES("0856954565", "399102");

ALTER USER 'root' IDENTIFIED WITH mysql_native_password BY 'password';

flush privileges;