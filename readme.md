<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

# 

Instalacion e inicializacion del proyecto.-

## Installation

Para correr el proyecto en nuestro pc, clonamos el Proyecto con el algún nombre que nos acomode, teniendo en cuenta que ese nombre tendrá la carpeta principal del proyecto, en mi caso sera back para el Laravel y fron para el Front de React.

para ello nos vamos a la consola, en nuestro caso la de git.

Para la creacion de la carpeta.

```bach
mkdir app
```
nos movemos dentro de app con:

```bach
cd app/
```

Teniendo en cuanta que es un back y un front, podemos crear una carpeta general donde clonaremos el proyecto de laravel que seria nuestro back.

```bash
git clone https://github.com/eduardo19940331/ApiCrudBack.git back
```
Esto empezara a descargar todos los paquetes de nuestro repositorio al local, en la carpeta back, cuando este proceso termine...

nos movemos dentro de la carpeta back con:

```bash
cd back/
```
Ejecutamos composer:

```bash
composer install
```
copiamos el .env.example => .env

```bash
cp .env.example .env
```

Y corroboramos estos parametros en el archivo .env

```php
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=bdticket
DB_USERNAME=root
DB_PASSWORD=
```

por conceptos de JWTAuth token introducimos el siguiente comando

```bash
php artisan jwt:secret
```

Este es el Back, para iniciar el servidor del proyecto ejecutamos:

```bash
php artisan serve
```
esto iniciara nuestro proyecto Laravel, para verlo podemos ir a [http://localhost:8000/](http://localhost:8000/)

Nuestro servidor esta listo para usarse.

## Informacion

En la ruta test/ScriptBD/Script_BDTicket.sql copiamos el contenido de nuestro script en algún DBMS y ejecutamos para la creación de nuestra BD.

con esto tendriamos nuestra DB montada, ademas esta base de datos ya esta poblada.

Para iniciar sesion el usuario:

Admin:
correo: eso@ejemplo.cl
password: asdasd

User:
correo: mbm@ejemplo.cl
password: asdasd