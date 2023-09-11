create database ecommerce;
use ecommerce;

create table client(
idClient int auto_increment primary key,
Fname varchar(10),
minit char(3),
Lname varchar(20),
CPF char(11) not null,
Adress varchar(30),
constraint unique_cpf_client unique (CPF)

);

create table product(
idProduct int auto_increment primary key,
Pname varchar(10) not null,
classification_kids bool default false,
avaliação float default 0,
constraint unique_cpf_client unique (CPF)

);

create table payments(
idClient int,
idPayment int,
typePayment enum("Boleto", "Cartão", "Dois cartões"),
limitAvaliable float,
primary key(idClient, id_payment)

);

create table orders(
idOrder int auto_increment primary key,
idOrderClient int,
orderStatus enum("Cancelado", "Confirmado", "Em processamento"),
orderDescription varchar(255),
sendValue float default 10,
paymentCash bool default false,
constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
);

create table productsStorage(
idProductStorage int auto_increment primary key,
storageLocation varchar(255),
quantity int default 0

);

create table supplier(
idSupplier int auto_increment primary key,
SoclialName varchar(255) not null,
CNPJ char(15) not null,
constraint unique_supplier unique (CNPJ)


);

create table seller(
idSeller int auto_increment primary key,
SocialName varchar(255) not null,
AbstName varchar(255),
CNPJ char(15),
CPF char(9),
location varchar(255),
contat char(11) not null,
constraint unique_cnpj_client unique (CNPJ),

constraint unique_cpf_seller unique (CPF)

);

create table productSeller(
idPseller int,
idProduct int,
prodQuantity int default 1,
primary key (idPseller, idProduct),
constraint fk_product_seller foreign key (idSeller) references seller(idSeller),
constraint fk_product_product foreign key (idProduct) references product(idProduct)

);