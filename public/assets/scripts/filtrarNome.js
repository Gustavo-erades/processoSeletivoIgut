async function filtrarNome() {
    let campoPesquisa = document.querySelector(".form-control").value;
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
            listaDados(data);
        })
        .catch(error => {
            console.error('Erro ao fazer a requisição:', error);
        });
}