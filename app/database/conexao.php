<?php
    $hostname="localhost";
    $username="root";
    $password="";
    $database="bd_igut";

    try {
        $conn = new mysqli($hostname, $username, $password, $database);
        if ($conn->connect_error) {
            throw new Exception("A conexão com o banco de dados falhou: " . $conn->connect_error);
        }
        //echo "Conexao com o banco de dados feita com sucesso :)";
    } catch (Exception $erro) {
        echo "Erro no banco de dados: " . $erro->getMessage();
    }