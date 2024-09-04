document.addEventListener("DOMContentLoaded", () => {
    fetch('./app/services/apiCarregaRegistros.php')
        .then(response => {
            if (!response.ok) {
                throw new Error('Erro na requisição, código de status: ' + response.status);
            }
            return response.json(); 
        })
        .then(data=>{
            listaDados(data);
        })
        .catch(error => {
            console.error('Erro ao enviar a requisição:', error);
        });
});

