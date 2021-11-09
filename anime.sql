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

CREATE TABLE fornece_para(
	nome_estudio VARCHAR(100),
    url_site VARCHAR(100),
    FOREIGN KEY(nome_estudio) REFERENCES site_de_dominio(url),
    FOREIGN KEY(nome_estudio) REFERENCES estudio_de_animacao(nome),
    PRIMARY KEY (nome_estudio, url_site)
);

CREATE TABLE trabalham_em (
	nome_estudio VARCHAR(100),
    cpf_funcionarios CHAR(11),
    FOREIGN KEY(nome_estudio) REFERENCES estudio_de_animacao(nome),
    FOREIGN KEY(cpf_funcionarios) REFERENCES funcionarios(cpf),
    PRIMARY KEY (nome_estudio, cpf_funcionarios)
);

CREATE TABLE produz (
	nome_estudio VARCHAR(100),
    nome_animes VARCHAR(100),
	FOREIGN KEY(nome_estudio) REFERENCES estudio_de_animacao(nome),
    FOREIGN KEY(nome_animes) REFERENCES animes(nome),
    PRIMARY KEY (nome_estudio, nome_animes)
);

CREATE TABLE possui (
	nome_animes VARCHAR(100),
	sinopse_episodio VARCHAR(100),
    FOREIGN KEY(nome_estudio) REFERENCES estudio_de_animacao(nome),
    FOREIGN KEY(sinopse_episodio) REFERENCES episodio(sinopse),
    PRIMARY KEY(nome_animes)
);

CREATE TABLE coordenam (
	comanda_a_producao_produtores VARCHAR(100),
    nome_animes VARCHAR(100),
	FOREIGN KEY(comanda_a_producao) REFERENCES produtores(comanda_a_producao),
    FOREIGN KEY(nome_animes) REFERENCES animes(nome),
    PRIMARY KEY (comanda_a_producao_produtores, nome_animes)
);


CREATE TABLE elaborados (
	historia_autores VARCHAR(100),
    nome_animes VARCHAR(100),
	FOREIGN KEY(historia_autores) REFERENCES autores(historia),
    FOREIGN KEY(nome_animes) REFERENCES animes(nome),
    PRIMARY KEY (historia_autores, nome_animes)
);

CREATE TABLE pertence_a (
	grupos_demograficos_genero VARCHAR(100),
    nome_animes VARCHAR(100),
	FOREIGN KEY(grupos_demograficos_genero) REFERENCES genero(grupos_demograficos),
    FOREIGN KEY(nome_animes) REFERENCES animes(nome),
    PRIMARY KEY (grupos_demograficos_genero, nome_animes)
);
