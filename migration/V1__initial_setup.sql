CREATE TABLE IF NOT EXISTS SourceItems (
    id INT AUTO_INCREMENT PRIMARY KEY,
    source VARCHAR(1024) NOT NULL,
    start DATETIME NOT NULL,
    end DATETIME NOT NULL,
    total INT, 
    availability INT,
    experience INT,
    latency float    
);
