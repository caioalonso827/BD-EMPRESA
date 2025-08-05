-- grant: concede permissões a usuários
-- o comando 'grant' dá permissões para um usuário acessar ou modificar dados
-- exemplo 1: concede ao usuário 'gerente' permissão para consultar e inserir
grant select, insert on clientes to 'gerente'@'localhost';
select 'permissão select e insert concedida ao gerente' as status;

-- exemplo 2: concede ao usuário 'vendedor' apenas permissão para consultar
grant select on clientes to 'vendedor'@'localhost';
select 'permissão select concedida ao vendedor' as status;

-- revoke: remove permissões de usuários
-- o comando 'revoke' tira permissões que foram dadas anteriormente
-- exemplo 1: remove a permissão de inserção do gerente
revoke insert on clientes from 'gerente'@'localhost';
select 'permissão insert removida do gerente' as status;

-- exemplo 2: remove a permissão de consulta do vendedor
revoke select on clientes from 'vendedor'@'localhost';
select 'permissão select removida do vendedor' as status;