-- grant: concede permissões
grant select, insert on clientes to 'usuario1'@'localhost';
select 'permissão select e insert concedida a usuario1' as status;

-- revoke: remove permissões
revoke insert on clientes from 'usuario1'@'localhost';
select 'permissão insert removida de usuario1' as status;