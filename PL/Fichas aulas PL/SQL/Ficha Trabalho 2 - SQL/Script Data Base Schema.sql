create table Autor 
(
    IDAutor int primary key identity (1,1),
    Nome                 varchar(100),
    Nacionalidade        varchar(100),
);

create table Autoria 
(
    IDLivro              int                       not null,
    IDAutor              int                      not null,
    primary key (IDLivro, IDAutor)
);


create table Livro 
(
    IDLivro              int primary key identity (1,1) not null,
    Titulo               varchar(100),
    Editora              varchar(100),
    Edicao               int,
);

alter table Autoria
   add foreign key  (IDAutor)
      references Autor (IDAutor)
      on update CASCADE
      on delete CASCADE;

alter table Autoria
   add foreign key (IDLivro)
      references Livro (IDLivro)
      on update CASCADE
      on delete CASCADE;

