create database bd_igut;
use bd_igut;
create table Produtos(
	id int not null auto_increment,
    nome varchar(100) not null,
    marca varchar(50) not null,
    categoria varchar(50) not null,
    dt_cadastro datetime not null,
    primary key(id)
);
alter table Produtos add column preco double not null; 
select * from Produtos;

INSERT INTO Produtos (nome, marca, categoria, preco, dt_cadastro) VALUES 
('Laptop X1', 'TechBrand', 'tecnologia', ROUND(RAND() * 2000 + 500, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Smartphone Y2', 'GadgetCo', 'tecnologia', ROUND(RAND() * 1000 + 200, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Cadeira Gamer Z3', 'ComfortCorp', 'tecnologia', ROUND(RAND() * 800 + 150, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Impressora X4', 'PrintRight', 'tecnologia', ROUND(RAND() * 500 + 100, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Monitor 24" A5', 'ViewMax', 'tecnologia', ROUND(RAND() * 300 + 100, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),

('Detergente Multiuso', 'CleanTech', 'limpeza', ROUND(RAND() * 20 + 5, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Desinfetante Ecológico', 'PureClean', 'limpeza', ROUND(RAND() * 30 + 10, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Esponjas de Limpeza', 'ScrubIt', 'limpeza', ROUND(RAND() * 15 + 3, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Limpa Vidros', 'ClearView', 'limpeza', ROUND(RAND() * 25 + 7, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Produtos de Limpeza', 'ShinyHouse', 'limpeza', ROUND(RAND() * 40 + 12, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),

('Faca de Cozinha', 'KitchenMaster', 'utilitário', ROUND(RAND() * 50 + 10, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Panela de Pressão', 'CookWare', 'utilitário', ROUND(RAND() * 120 + 20, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Aspirador de Pó', 'CleanSweep', 'utilitário', ROUND(RAND() * 150 + 50, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Rolo de Massas', 'BakePro', 'utilitário', ROUND(RAND() * 30 + 10, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Tábua de Corte', 'ChopMaster', 'utilitário', ROUND(RAND() * 40 + 5, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),

('Camisa Casual', 'FashionFit', 'roupa', ROUND(RAND() * 60 + 20, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Calça Jeans', 'DenimWorld', 'roupa', ROUND(RAND() * 80 + 30, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Vestido de Verão', 'SummerStyle', 'roupa', ROUND(RAND() * 70 + 25, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Tênis Esportivo', 'RunFast', 'roupa', ROUND(RAND() * 100 + 40, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Casaco de Inverno', 'WarmWear', 'roupa', ROUND(RAND() * 120 + 50, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),

('Tablet G1', 'TechMate', 'tecnologia', ROUND(RAND() * 500 + 150, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Headphones H2', 'SoundMax', 'tecnologia', ROUND(RAND() * 150 + 50, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Teclado Mecânico', 'KeyTech', 'tecnologia', ROUND(RAND() * 120 + 30, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Mouse Óptico', 'ClickSmart', 'tecnologia', ROUND(RAND() * 60 + 15, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Webcam HD', 'VisionPlus', 'tecnologia', ROUND(RAND() * 80 + 20, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),

('Produto de Limpeza', 'CleanPro', 'limpeza', ROUND(RAND() * 25 + 10, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Desinfetante Industrial', 'SafeClean', 'limpeza', ROUND(RAND() * 35 + 15, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Limpeza de Piso', 'FloorShine', 'limpeza', ROUND(RAND() * 20 + 7, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Pano de Microfibra', 'MicroClean', 'limpeza', ROUND(RAND() * 18 + 6, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Limpador de Carpetes', 'CarpetCare', 'limpeza', ROUND(RAND() * 40 + 15, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),

('Escorredor de Louças', 'DryIt', 'utilitário', ROUND(RAND() * 25 + 10, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Jogo de Panelas', 'CookMaster', 'utilitário', ROUND(RAND() * 200 + 50, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Ralador de Queijo', 'GrateIt', 'utilitário', ROUND(RAND() * 15 + 5, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Forma de Silicone', 'BakePro', 'utilitário', ROUND(RAND() * 25 + 10, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Abridor de Latas', 'CanOpener', 'utilitário', ROUND(RAND() * 20 + 8, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),

('Short de Praia', 'BeachWear', 'roupa', ROUND(RAND() * 40 + 15, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Blusa de Frio', 'CozyWear', 'roupa', ROUND(RAND() * 60 + 20, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Saia Elegante', 'FashionLine', 'roupa', ROUND(RAND() * 50 + 15, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY),
('Botas de Couro', 'LeatherBoots','roupa', ROUND(RAND() * 50 + 15, 2), DATE('2024-09-02') + INTERVAL FLOOR(RAND() * 5) DAY)

