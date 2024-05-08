create table fonydb.user (
	id int(255) not null auto_increment,
    name varchar(255) null,
    username varchar(255) null,
    email varchar(200) null,
    password varchar(200) null,
    role int(10) null,
    created_at timestamp null,
    updated_at timestamp null,
    primary key(id)
);