-- 1 - Listar a média de itens por malote
SELECT TRUNCATE(b.qtd_itens / b.qtd_malotes, 2) AS media_itens_por_pacote
  FROM (
SELECT COUNT(a.id_malote) AS qtd_malotes,
	   SUM(a.itens) qtd_itens
  FROM (SELECT ma.id_malote,
			   COUNT(it.id_item) AS itens
		  FROM tb_malote ma,
			   tb_item it
		 WHERE ma.id_malote = it.id_malote
		 GROUP BY ma.id_malote) a
 GROUP BY a.id_malote,
		  a.itens) b;
-- 2 - Informar todos os dados ods itens do malote de codigo 3456.
SELECT it.*
  FROM tb_malote ma,
       tb_item it
 WHERE ma.id_malote = it.id_malote
   AND ma.id_malote = 34356;
-- 3 - Listar nome, cnpj, cidade estao, email, dos clientes (usuários) pessoa jurídica cadastrados em março de 2019.
SELECT u.nome_razao_social AS razao_social,
	   u.cpf_cnpj AS cnpj,
	   u.cidade,
	   u.estado,
	   l.email
  FROM tb_usuario u,
       tb_login l
 WHERE u.id_usuario = l.id_usuario
   AND LENGTH(u.cpf_cnpj) > 11
   AND u.dt_criacao BETWEEN CAST('2019,3,1 00,00,00' AS DATE) AND CAST('2019,3,31 23,59,59' AS DATE);
-- 4 - Informar todo o trâmite do malote de codigo 3456.
SELECT *
  FROM tb_tramite
 WHERE id_malote = 34356;
-- 5 - Informar a quantidade de malotes enviados por cliente, pesquisando pelo cpf, no segundo bimestre de 2019.
SELECT us.cpf_cnpj,
	   COUNT(ma.id_malote)
  FROM tb_usuario us,
	   tb_malote ma
 WHERE us.id_usuario = ma.id_usr_remetente
   AND us.cpf_cnpj = '57517230000140'
   AND ma.status IN ('ENVIADO', 'ENTREGUE')
 GROUP BY us.cpf_cnpj;
