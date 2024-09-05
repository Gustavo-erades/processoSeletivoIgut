async function filtrarNome(elemento) {
    let campoPesquisa = elemento.value;
    const divAlerta = document.querySelector(".divAlerta");
    const linkVoltar=document.querySelector("#btnAnterior");
    const linkAvancar=document.querySelector("#btnProx");
    const data = {
        valorDigitado: campoPesquisa
    };
    fetch('./app/services/apiFiltrarNome.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Erro na requisição. Status: ' + response.status);
            }
            return response.json();
        })
        .then(data => {
            if (data.length > 0) {
                linkVoltar.style.display='inline';
                linkAvancar.style.display='inline';
                divAlerta.classList = "divAlerta d-none";
                listaDados(data);

            } else {
                const tabela = document.querySelector("tbody");
            
                tabela.textContent = '';
                linkVoltar.style.display='none';
                linkAvancar.style.display='none';
                divAlerta.classList = "divAlerta d-block";
            }
            console.log(data)

        })
        .catch(error => {
            console.error('Erro ao fazer a requisição:', error);
        });
}