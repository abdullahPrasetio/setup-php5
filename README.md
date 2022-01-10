```
Sebelum melakukan panduan ini pastikan docker telah anda instal di dalam komputer anda.
```

# SETUP DOCKER LARAVEL PROJECT
## Image tersedia didalam setup ini :

* [PHP](https://hub.docker.com/_/php)
* [Mysql](https://hub.docker.com/_/mysql)

## Langkah yang perlu dilakukan untuk instalasi
Pastikan anda telah memiliki akun github dan telah menginstal tool git dalam komputer dan terminal anda.
Copy kan code berikut ke terminal directory yang anda inginkan

1. clone project
```
git clone git@github.com:abdullahPrasetio/setup-php5.git
```
2. Rename folder
```
mv setup-laravel-docker <new name folder>
```
3. Masuk ke folder
```
cd <new name folder>
```
4. lakukan build
```
docker-compose build && docker-compose up -d
```
Silahkan masukan project php di htdocs
akses program yang telah terinstal di localhost:9000

***Selesai***

## Config Default
---
1. PHP
    * Port : 9000
2. Mysql
    * Port : 3307

Panduan Perubahan Port
1. Jika Port Php ingin dirubah silahkan ganti di bagian docker.compose

Jika ingin instal extension atau tambah setup php.ini tambahkan di bagian dockerfile

1. Untuk tambah extension
```
    && docker-php-ext-install pdo pdo_mysql zip mysqli mysql \
    && docker-php-ext-enable mysqli pdo_mysql zip mysql
```
2. Untuk tambah setting di php.ini
```
    && echo "<value>" >> /usr/local/etc/php/conf.d/setting.ini
```
# Sekian Terimakasih

