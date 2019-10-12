CREATE TABLE users_profiles(
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	user_id BIGINT(20) NOT NULL,
	profile_id BIGINT(20) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (profile_id) REFERENCES profiles(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;