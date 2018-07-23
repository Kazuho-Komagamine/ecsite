set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite;

create database if not exists ecsite;
use ecsite;

drop table if exists login_user_transaction;

create table login_user_transaction(
    id int not null primary key auto_increment,
    login_id varchar(16) unique,
    login_pass varchar(16),
    user_name varchar(50),
    insert_date datetime,
    updated_date datetime
);
INSERT INTO login_user_transaction(login_id,login_pass,user_name) VALUES ("internous", "internous01","test");

drop table if exists item_info_transaction;

create table item_info_transaction(
    id int not null primary key auto_increment,
    item_name varchar(30),
    item_price int,
    item_stock int,
    insert_date datetime,
    update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
    id int not null primary key auto_increment,
    item_transaction_id int,
    total_price int,
    total_count int,
    user_master_id varchar(16),
    pay varchar(30),
    insert_date datetime,
    delete_date datetime
);

INSERT INTO item_info_transaction(item_name, item_price, item_stock) VALUES("ノートBook",100,50);

create table product_info(
id int primary key not null auto_increment comment "ID",
product_id int unique not null comment "商品ID",
product_name varchar(100) unique not null comment "商品名",
product_name_kana varchar(100) not null comment "商品名かな",
product_description varchar(255) not null comment "商品詳細",
category_id int not null not null comment "カテゴリID",
price int comment "価格",
image_file_path varchar(100) comment "画像ファイルパス",
image_file_name varchar(50) comment "画像ファイル名",
release_date datetime not null comment "発売年月",
release_company varchar(50) comment "発売会社",
status tinyint not null default 0 comment "ステータス",
regist_date datetime not null comment "登録日",
update_date datetime comment "更新日",
foreign key(category_id) references m_category(category_id)
)
default charset=utf8
comment="商品情報テーブル"
;
insert into product_info values
( 1, 1,"CD1","しーでぃー1","アルバム",2,2000,"./images","walk_the_plank.jpg",now(),"スーパーミュージック株式会社",0,now(),now());

create table m_category(
id int primary key not null comment "ID",
category_id int not null unique comment "カテゴリID",
category_name varchar(20) not null unique comment "カテゴリ名",
category_description varchar(100) comment "カテゴリ詳細",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)
default charset=utf8
comment="カテゴリマスタテーブル"
;
insert into m_category values
(1,1,"シングル","シングルCDが対象となります",now(), null),
(2,2,"アルバム","アルバムCDが対象となります",now(),null);