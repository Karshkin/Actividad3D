sudo apt-get update

apt-get -y install apache2

sudo rm -rf /var/www
ln -s /home/proyectos /var/www

sudo cp /home/conf/ejemplo1.com.conf /etc/apache2/sites-available/
sudo cp /home/conf/ejemplo2.com.conf /etc/apache2/sites-available/

sudo a2dissite default
sudo a2ensite ejemplo1.com.conf
sudo a2ensite ejemplo2.com.conf

service apache2 reload

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server php5-mysql php5 libapache2-mod-php5 php5-mcrypt
sudo mysql_install_db

sudo rm /etc/mysql/my.cnf
sudo cp /home/conf/my.cnf /etc/mysql
sudo service mysql restart