<?php
    function quantidadeDeRegistros($conn){
        $sql="SELECT COUNT(*) as total FROM bd_igut.Produtos;";
        $stmt=mysqli_prepare($conn,$sql);
        if($stmt===false){
            return "Erro".mysqli_error($conn);
        }
        mysqli_stmt_execute($stmt);
        $result=mysqli_stmt_get_result($stmt);
        if($result===false){
            return "Erro".mysqli_error($conn);
        }else{
            $resultSql=mysqli_fetch_assoc($result);
            return (int)$resultSql['total'];
        }   
    }