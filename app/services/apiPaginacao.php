<?php
require_once("../database/conexao.php");
require_once("../helpers/dadosPaginacao.php");
header('Content-Type: application/json');
if (isset($_GET['acao'])) {
    $return = array();
    $paginaAtual = isset($_GET['pagina'])?$_GET['pagina']:1;
    $limite = 6;
    $totalPags=ceil(quantidadeDeRegistros($conn)/$limite);
    if($_GET['acao']=='voltar'){
        $paginaAtual=$paginaAtual-1;
        $paginaAtual<1?$paginaAtual=1:$paginaAtual;
    }else if($_GET['acao']=='avancar'){
        $paginaAtual=$paginaAtual+1;
        $paginaAtual>$totalPags?$paginaAtual=$totalPags:$paginaAtual;
    }
    $return[0]=$paginaAtual;
    $return[1]=$totalPags;
    $inicio = ($paginaAtual * $limite) - $limite;
    $sql = "SELECT * FROM bd_igut.Produtos LIMIT $inicio,$limite;";
    $stmt = mysqli_prepare($conn, $sql);
    if ($stmt === false) {
        die(json_encode(array($erro => 'Erro na preparação da declaração SQL (apiPaginacao.php)' . mysqli_error($conn))));
    }
    $resultQuery = mysqli_stmt_execute($stmt);
    if ($resultQuery === false) {
        die(json_encode(array($erro => 'Erro na excução da query SQL (apiPaginacao.php):' . mysqli_error($conn))));
    } else {
        $respSelect = mysqli_stmt_get_result($stmt);
        if (mysqli_num_rows($respSelect) > 0) {
            while ($row = mysqli_fetch_assoc($respSelect)) {
                $return[] = $row;
            }
            mysqli_stmt_close($stmt);
        }
        echo json_encode($return);
    }
}
