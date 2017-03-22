USE teste
GO
CREATE PROCEDURE BUSCAALUNO
@NOMEALUNO VARCHAR (20) --- Declarando vari�vel (note que utilizamos o @ antes do nome da vari�vel)
AS
SELECT n.nome, c.NOME--- Consulta
FROM TBL_ALUNO n,TBL_CURSO c
WHERE n.nome = @NOMEALUNO --- Utilizando vari�vel como filtro para a consulta

execute BUSCAALUNO 'Arieli'
