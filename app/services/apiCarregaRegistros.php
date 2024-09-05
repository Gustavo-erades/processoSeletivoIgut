<?php
    require_once("../database/conexao.php");
    require_once("../helpers/formatarValores.php");
    header('Content-Type: application/json');
    $return=array();
    $sql="SELECT * FROM bd_igut.Produtos LIMIT 6;";
    $stmt = mysqli_prepare($conn, $sql);
    if ($stmt === false) {
        die(json_encode(array($erro=>'Erro na preparação da declaração SQL (apiCarregaRegistros.php)' . mysqli_error($conn))));
    }
    $resultQuery = mysqli_stmt_execute($stmt);
    if ($resultQuery === false) {
        die(json_encode(array($erro=>'Erro na excução da query SQL (apiCarregaRegistros.php):' . mysqli_error($conn))));
    } else {
        $respSelect = mysqli_stmt_get_result($stmt);
        if (mysqli_num_rows($respSelect) > 0) {
            while ($row = mysqli_fetch_assoc($respSelect)) {
                $row['preco']=formataPreco($row['preco']);
                $row['dt_cadastro']=formataData($row['dt_cadastro']);
                $return[] = $row;
            }
            mysqli_stmt_close($stmt);
        } 
        echo json_encode($return);
    }
