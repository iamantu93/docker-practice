USE antudb;

CREATE TABLE food_items (
  id MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  image VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO food_items (title, description, image) VALUES 
("The Perfect Sandwich, A Real NYC Classic", "Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.", "sandwich.jpg"),
("Let Me Tell You About This Steak", "Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.", "steak.jpg"),
("Cherries, interrupted", "Lorem ipsum text praesent tincidunt ipsum lipsum. What else?", "cherries.jpg"),
("Once Again, Robust Wine and Vegetable Pasta", "Lorem ipsum text praesent tincidunt ipsum lipsum.", "wine.jpg");


