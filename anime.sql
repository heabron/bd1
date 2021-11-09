-- Link repositorio: https://github.com/heabron/bd1

CREATE TABLE animes (
	titulo VARCHAR(100),
    enredo VARCHAR(100),
    temporadas INTEGER,
    PRIMARY KEY(titulo)
);

CREATE TABLE estudio_de_animacao (
	qualidade INTEGER,
    nome VARCHAR(100),
   real INTEGER,
    PRIMARY KEY(nome)
);

CREATE TABLE funcionarios (
    cpf CHAR(11),
    PRIMARY KEY(cpf)
);

CREATE TABLE produtores (
   comanda_a_producao VARCHAR(100),
    escalar_o_elenco INTEGER,
    administrar_os_gastos INTEGER,
    PRIMARY KEY(comanda_a_producao)
);

CREATE TABLE autores (
    historia VARCHAR(300),
	qualidade INTEGER,
    diferencial VARCHAR(100),
    PRIMARY KEY (historia)
);

CREATE TABLE generos (
    crossovers VARCHAR(100),
    subgeneros VARCHAR(100),
	grupos_demograficos VARCHAR(100),
    PRIMARY KEY (grupos_demograficos)
);

CREATE TABLE episodios (
	tema VARCHAR(100),
    duracao VARCHAR(100),
    PRIMARY KEY (sinopse)
);

CREATE TABLE tradutores (
	adaptacao INTEGER,
    dominio_da_lingua INTEGER
);

CREATE TABLE dubladores (
	registro_de_ator INTEGER,
    tecnica_vocal INTEGER,
    diccao_perfeita INTEGER
);

CREATE TABLE animadores (
	design_dos_personagens VARCHAR(200)
    tecnicas_de_animacao VARCHAR(200)
    simbolos_visuais INTEGER
);

CREATE TABLE site_de_dominio (
	variedade VARCHAR(100),
    assinantes VARCHAR(100),
	URL VARCHAR(100),
    PRIMARY KEY (URL)
);
