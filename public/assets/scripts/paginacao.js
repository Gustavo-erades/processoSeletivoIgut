document.addEventListener("DOMContentLoaded",()=>
    paginacao()
)
async function paginacao(acao){
    let pagAtual=document.querySelector("#btnAtual").textContent;
    fetch('./app/services/apiPaginacao.php?acao='+acao+'&pagina='+pagAtual)
        .then(response => {
            if (!response.ok) {
                throw new Error('Erro na requisição (paginacao), código de status: ' + response.status);
            }
            return response.json(); 
        })
        .then(data=>{;
            document.querySelector("#btnAtual").innerHTML=data[0];
            document.querySelector("#pagAtual").innerHTML=data[0];
            document.querySelector("#pagMax").innerHTML=data[1];
            delete data[0];
            delete data[1];
            listaDados(data);
        })
        .catch(error => {
            console.error('Erro ao enviar a requisição:', error);
        });

}