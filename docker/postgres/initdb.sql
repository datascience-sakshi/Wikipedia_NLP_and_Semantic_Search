CREATE TABLE category (
	id INTEGER,
	name TEXT,
	PRIMARY KEY (id));

CREATE TABLE page (
	page_id INTEGER,
	title_id TEXT,
	text TEXT);

CREATE TABLE category_page(
	page_id INTEGER,
	category_id INTEGER,	
	CONSTRAINT fk_category_id
	FOREIGN KEY (category_id)
	REFERENCES category(id),
	CONSTRAINT fk_page_id
	FOREIGN KEY (page_id)
	REFERENCES page(id));
