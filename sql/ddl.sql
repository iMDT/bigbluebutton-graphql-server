
create table meetings (
	id varchar(200) not null primary key,
	name varchar(200) not null
);

create table chats (
	id varchar(200) not null primary key,
	meeting_id varchar(200) not null references meetings(id)
);

alter table meetings add public_chat_id	varchar(200) not null references chats(id);

create table users (
	id varchar(200) not null primary key,
	meeting_id varchar(200) not null references meetings(id),
	name varchar(200) not null,
	session_token varchar(200) not null,
	role varchar(200) not null,
	avatar_url varchar(2000),
	talking boolean
);

create table messages (
	id varchar(200) not null primary key,
	sent_at timestamp not null,
	chat_id	varchar(200) not null references chats(id),
	sender_user_id varchar(200) not null references users(id),
	message text not null	
);


