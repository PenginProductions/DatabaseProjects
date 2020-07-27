<?php
# Establishes connection to MYSQL
# (host, username, password, database)

$DB_USER = 'root';
$DB_PASS = '';
$DB_HOST = 'localhost';
$DB_NAME = 'ListBuilderDB';

#make connection
$dbc = @mysqli_connect($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME) OR die('Could not connect to MYSQL: ' . mysqli_connect_error() );

#set encoding
mysqli_set_charset($dbc, 'utf8');
