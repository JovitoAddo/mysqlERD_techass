create database skilvul_music_streaming;

create table user (
user_id int primary key,
name varchar(32),
email varchar(30),
password varchar(24)
);

create table singer (
singer_id int primary key,
name varchar(32)
);

create table album (
album_id int primary key,
name varchar (32),
singer_id int
);

create table track (
track_id int primary key,
title varchar (32),
singer_id int,
album_id int,
foreign key (singer_id) references singer(singer_id),
foreign key (album_id) references album(album_id)
);

create table playlist (
playlist_id int primary key,
user_id int,
tracks int,
foreign key (user_id) references user(user_id)
);

create table playlist_player (
pp_id int primary key,
track_id int,
playlist_id int,
foreign key (track_id) references track(track_id),
foreign key (playlist_id) references playlist(playlist_id)
);