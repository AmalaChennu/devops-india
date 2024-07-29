three tire application in single server

server {
 listen 80;
 server_name 15.206.70.216;
 location / {
 proxy_pass http://127.0.0.1:5000;
 proxy_set_header Host $host;
 proxy_set_header X-Real-IP $remote_addr;
 proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
 proxy_set_header X-Forwarded-Proto $scheme;
 }
}

CREATE TABLE student_feedback (
    name varchar(20),
    location varchar(20),
    aws_trained varchar(20),
    feedback varchar(20),
    rating varchar(20)
);

CREATE TABLE student_feedback.feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    aws_trained VARCHAR(255) NOT NULL,
    feedback TEXT NOT NULL,
    rating INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);