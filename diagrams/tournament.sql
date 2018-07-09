SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS entries;
DROP TABLE IF EXISTS tournaments;




/* Create Tables */

-- 退会参加者を記録するテーブル
CREATE TABLE entries
(
	id int NOT NULL AUTO_INCREMENT,
	tournament_id int NOT NULL,
	team_name varchar(255),
	representive_name varchar(255),
	email varchar(255),
	phone varchar(255),
	PRIMARY KEY (id)
) COMMENT = '退会参加者を記録するテーブル';


-- トーナメント一覧を管理するテーブル
CREATE TABLE tournaments
(
	id int NOT NULL AUTO_INCREMENT,
	title varchar(255),
	subtitle varchar(255),
	date datetime,
	image varchar(255),
	description varchar(255),
	PRIMARY KEY (id)
) COMMENT = 'トーナメント一覧を管理するテーブル';



/* Create Foreign Keys */

ALTER TABLE entries
	ADD FOREIGN KEY (tournament_id)
	REFERENCES tournaments (id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
;



