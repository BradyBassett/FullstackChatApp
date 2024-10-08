CREATE TABLE notifications (
	id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(id) ON DELETE CASCADE,
	type VARCHAR(50) NOT NULL,
	message_id INT REFERENCES messages(id) ON DELETE CASCADE,
	content_preview TEXT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);