<?php
    require_once("../database/conexao.php");
    header('Content-Type: application/json');
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);
    if (json_last_error() === JSON_ERROR_NONE) {
        $return = array();
        $sql = "SELECT * FROM bd_igut.Produtos WHERE nome LIKE ? or marca LIKE ? or categoria LIKE ? LIMIT 6;";
        $stmt = mysqli_prepare($conn, $sql);
        if ($stmt === false) {
            die(json_encode(array($erro => 'Erro na preparação da declaração SQL (apiFiltrarNome.php)' . mysqli_error($conn))));
        }
        $buscarSql='%'.$data['valorDigitado'].'%';
        mysqli_stmt_bind_param($stmt, 'sss', $buscarSql, $buscarSql, $buscarSql);
        $resultQuery = mysqli_stmt_execute($stmt);
        if ($resultQuery === false) {
            die(json_encode(array($erro => 'Erro na excução da query SQL (apiFiltrarNome.php):' . mysqli_error($conn))));
        } else {
            $respSelect = mysqli_stmt_get_result($stmt);
            if (mysqli_num_rows($respSelect) > 0) {
                while ($row = mysqli_fetch_assoc($respSelect)) {
                    $return[] = $row;
                }
            }
            mysqli_stmt_close($stmt);
        }
    } else {
        $return = array($erro => 'Erro ao decodificar o JSON enviado: ' . json_last_error_msg()
        );
    }
    echo json_encode($return);
