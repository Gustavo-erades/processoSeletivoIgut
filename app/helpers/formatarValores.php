<?php
    function formataData($data){
            $dataOriginal = new DateTime($data);
            $dataFormatada = $dataOriginal->format('d/m/Y');
            return $dataFormatada;
    }
    function formataPreco($preco){
        $precoFormatado=intval($preco,10);
        return number_format($precoFormatado,2,',','.');
}