function listaDados(data){
    const tabela=document.querySelector("tbody");
    tabela.textContent='';
    data.forEach((item)=>{
        if('erro' in item){
            console.log(item.erro);
        }else{
            const tr=document.createElement('tr');

            const tdId=document.createElement('td');
            const tdProduto=document.createElement('td');
            const tdPreco=document.createElement('td');
            const tdMarca=document.createElement('td');
            const tdCategoria=document.createElement('td');
            const tdCad=document.createElement('td');

            tdId.textContent=item.id;
            tdProduto.textContent=item.nome;
            tdPreco.textContent=item.preco;
            tdMarca.textContent=item.marca;
            tdCategoria.textContent=item.categoria;
            tdCad.textContent=item.dt_cadastro;


            tr.appendChild(tdId);
            tr.appendChild(tdProduto);
            tr.appendChild(tdPreco);
            tr.appendChild(tdMarca);
            tr.appendChild(tdCategoria);
            tr.appendChild(tdCad);

            tabela.appendChild(tr);
        }
    })
}