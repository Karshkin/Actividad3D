

Pasos a seguir:

Copia los archivos proporcionados en tu lugar de trabajo.

Cargar la maquina de Vagrant

Dentro de la maquina introducimos estos comandos para solucionar un problema de seguridad de MySQL

mysql -h localhost -u root -proot
CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'usuario';
GRANT ALL PRIVILEGES ON *.* TO 'usuario'@'localhost' WITH GRANT OPTION;
CREATE USER 'usuario'@'%' IDENTIFIED BY 'usuario';
GRANT ALL PRIVILEGES ON *.* TO 'usuario'@'%' WITH GRANT OPTION;
exit sudo service mysql restart

Una vez hecho esto podras conectarte al servidor de MYSQL mediante este comando:

mysql -h localhost -u usuario -pusuario -P 3309
