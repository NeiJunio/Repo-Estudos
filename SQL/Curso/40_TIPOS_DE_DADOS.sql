-- 13/04/2025 --

-- TIPOS DE DADOS

/*
    -> O SQL Server utiliza diferentes tipos de dados para armazenar informações em tabelas. Cada coluna em uma tabela precisa ter um tipo de dado definido, que determina o tipo de valor que pode ser armazenado ali. Abaixo estão os principais tipos de dados organizados por categorias com exemplos:

    1. Tipos Numéricos:
    - INT: Números inteiros de -2.147.483.648 a 2.147.483. 647. Ex: 100, -25
    - SMALLINT: Inteiros menores, de -32.768 a 32.767. Ex:     200, -300
    - TINYINT:Inteiros de 0 a 255. Ex: 0, 255
    - BIGINT: Para inteiros muito grandes. Ex: 9000000000000000000
    - DECIMAL(p, s) ou NUMERIC(p, s): Números com precisão exata. Ex: 12345.67, -9876.54
    - FLOAT: Para números com ponto flutuante. Ex: 3.14159, -0.0001
    - REAL: Tipo de ponto flutuante com precisão menor. Ex: 1.23, -4.56
    
    2. Tipos de Cadeia de Caracteres (Texto):
    - CHAR(n): Cadeia de caracteres com tamanho fixo. Ex: 'ABC', '12345'
    - VARCHAR(n): Cadeia de caracteres com tamanho variável. Ex: 'Olá mundo', 'João'
    - TEXT: Grandes quantidades de texto (obsoleto). Ex: 'Texto longo...', 'Mais conteúdo...'
    
    3. Tipos de Dados Unicode (suporta vários idiomas):
    - NCHAR(n): Similar ao CHAR, mas para Unicode. Ex: N'A', N'ç'
    - NVARCHAR(n): Similar ao VARCHAR, mas para Unicode. Ex: N'Olá', N'你好'
    - NTEXT: Versão Unicode do TEXT (obsoleto). Ex: N'Conteúdo extenso', N'Texto em vários idiomas'
    
    4. Tipos de Data e Hora (Temporais):
    - DATE: Armazena apenas data. Ex: '2025-04-10', '2000-01-01'
    - TIME: Armazena apenas hora. Ex: '13:45:30', '00:00:00' (hh:hh:ss) (entre '00:00:00.0000000' e '23:59:59.9999999') 
    - DATETIME: Armazena data e hora. Ex: '2025-04-10 13:45:30', '2000-01-01 00:00:00'
    - SMALLDATETIME: Menor precisão de data e hora. Ex: '2025-04-10 13:00:00', '1999-12-31 23:59:00' (entre '1900-01-01:00:00:00' e '2079-06-06:23:59:59')
    - DATETIME2: Mais preciso que DATETIME. Ex: '2025-04-10 13:45:30.1234567', '2023-07-01 08:00:00.0000001' (aaaa/mm/dd:hh:hh:sssssss)
    - DATETIMEOFFSET: Inclui fuso horário. Ex: '2025-04-10 13:45:30+00:00', '2024-01-01 08:00:00-03:00'
    
    5. Tipos Lógicos:
    - BIT: Armazena 0, 1 ou NULL. Ex: 0, 1
    
    6. Tipos Binários:
    - BINARY(n): Dados binários de tamanho fixo. Ex: 0x4F4B, 0xFFAA
    - VARBINARY(n): Dados binários de tamanho variável. Ex: 0x123456, 0xDEADBEEF
    - IMAGE: Armazena grandes dados binários (obsoleto). Ex: 0xFFD8FFE0..., 0x89504E47...
    
    7. Tipos Especiais:
    - UNIQUEIDENTIFIER: Identificador global único. Ex:     '6F9619FF-8B86-D011-B42D-00C04FC964FF', 'A0E7C934-1E1F-4A2B-9B67-123456789ABC'
    - SQL_VARIANT: Pode armazenar diferentes tipos. Ex: 'Texto', 123
    - XML: Armazena dados em XML. Ex: '<><nome>João</nome></ cliente>', '<item id="1"/>'
    - GEOGRAPHY / GEOMETRY: Dados espaciais. Ex: geography::STPointFromText('POINT(-122.34900 47.65100)', 4326), geometry::STGeomFromText('POINT(3 4)', 0)
    
    OBSERVAÇÃO:
    Sempre escolha o tipo de dado mais apropriado para cada coluna, para garantir desempenho, economia de espaço e integridade dos  dados.

*/