<?php
   /* define('DB_SERVER', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_DATABASE', 'invoice');
    $db_con = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
    */
    
    //$db_con = new PDO('mysql:host=localhost;dbname=invoice','root', '');
    $connect = new PDO('mysql:host=localhost;dbname=invoice','root', '');
?>