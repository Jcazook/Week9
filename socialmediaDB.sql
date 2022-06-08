create database if not exists socialmedia;

use socialmedia;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

create table users (
	id int(11) not null auto_increment,
	user_name varchar(20) not null,
	email varchar(35) not null,
	password varchar(35) not null,
	primary key(id)
);
create table posts (
	id int(11) not null auto_increment,
	user_id int(11) not null,
	post_text varchar(255) not null,
	primary key(id),
	foreign key (user_id) references users(id)
);
create table comments (
	id int(11) not null auto_increment,
	post_id int(11) not null,
	user_id int(11) not null,
	comment_desc varchar(255) not null,

	primary key(id),
	foreign key (post_id) references posts(id),
	foreign key (user_id) references users(id)
);