create database Script_telegram;

use Script_telegram;

CREATE TABLE BD_resposta (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    uploadid INT NOT NULL,
    nome VARCHAR(50),
    mens_cod INT UNSIGNED NOT NULL,
    Dat_resp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE (uploadid),
    CONSTRAINT fk_id FOREIGN KEY (mens_cod)
        REFERENCES comando (id)
);

CREATE TABLE Comando (
    id INT UNSIGNED NOT NULL,
    nom_com VARCHAR(30),
    PRIMARY KEY (id)
);

insert into comando value
(1,'/start'),
(2,'/megasena'),
(3,'/quina'),
(4,'/photo'),
(5,'mensagem');

select * from BD_resposta;
select * from comando;

/* Data DATETIME NOT NULL DEFAULT NOW(),*/