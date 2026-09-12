CREATE TABLE IF NOT EXISTS hermanas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    orden VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO hermanas (nombre, orden) VALUES
('Tamara', 'La mayor'),
('Alessia', 'La del medio'),
('Dannah', 'La menor');