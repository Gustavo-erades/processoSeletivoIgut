async function filtrarNome() {
    let campoPesquisa = document.querySelector(".form-control").value;
    const divAlerta = document.querySelector(".divAlerta");
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
                divAlerta.classList = "divAlerta d-none";
                listaDados(data);

            } else {
                const tabela = document.querySelector("tbody");
                tabela.textContent = '';
                divAlerta.classList = "divAlerta d-block";
            }
            console.log(data)

        })
        .catch(error => {
            console.error('Erro ao fazer a requisição:', error);
        });
}