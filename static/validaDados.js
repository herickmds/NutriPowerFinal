
function validaForm(form) {

    if (form.porcao.value == "" || form.porcao.value == null || form.foto.value.lenght > 1000) {
        //É mostrado um alerta, caso o campo esteja vazio.
        alert("Por favor, registre a porção do alimento.");
        //Foi definido um focus no campo.
        form.porcao.focus();
        //o form não é enviado.
        return false;
    }

    if (form.foto.value == "" || form.foto.value == null || form.foto.value.lenght < 3) {
        //É mostrado um alerta, caso o campo esteja vazio.
        alert("Por favor, registre a foto do paciente.");
        //Foi definido um focus no campo.
        form.foto.focus();
        //o form não é enviado.
        return false;
    }
    if (form.nome.value == "" || form.nome.value == null || form.nome.value.lenght < 3) {
        //É mostrado um alerta, caso o campo esteja vazio.
        alert("Por favor, indique o nome do paciente.");
        //Foi definido um focus no campo.
        form.nome.focus();
        //o form não é enviado.
        return false;
    }
    //o campo e-mail precisa de conter: "@", "." e não pode estar vazio
    if (form.email.value.indexOf("@") == -1 ||
        form.email.valueOf.indexOf(".") == -1 ||
        form.email.value == "" ||
        form.email.value == null) {
        alert("Por favor, indique um e-mail válido.");
        form.email.focus();
        return false;
    }

    if (form.complemento.value == "" || form.complemento.value == null) {
        alert("Por favor, insira um complemento do endereço!");
        form.complemento.focus();
        return false;
    }
    
    if (form.num_casa.value == "" || form.num_casa.value == null) {
        alert("Por favor, insira um número válido para o endereço!");
        form.num_casa.focus();
        return false;
    }

    if (form.idade.value == "" || form.idade.value == null || form.idade.value > 200 || (form.idade.value % 1 != 0 && !isNaN(form.idade.value % 1))) {
        alert("Por favor, insira uma idade válida para o paciente!");
        form.idade.focus();
        return false;
    }

    if (form.altura.value == "" || form.altura.value == null) {
        alert("Por favor, insira uma altura válida para o paciente!");
        form.altura.focus();
        return false;
    }
    if (form.peso.value == "" || form.peso.value == null) {
        alert("Por favor, insira um peso válido para o paciente!");
        form.peso.focus();
        return false;
    }
    
    if (form.telefone.value == "" || form.telefone.value == null) {
        alert("Por favor, insira um telefone válido para o paciente!");
        form.telefone.focus();
        return false;
    }
    if (form.cpf.value == "" || form.cpf.value == null) {
        alert("Por favor, insira um cpf válido para o paciente!");
        form.cpf.focus();
        return false;
    }    

}

//CEP//
function limpa_formulário_cep() {
    //Limpa valores do formulário de cep.
    document.getElementById('rua').value = ("");
    document.getElementById('bairro').value = ("");
    document.getElementById('cidade').value = ("");
    document.getElementById('uf').value = ("");
    document.getElementById('ibge').value = ("");
}

function meu_callback(conteudo) {
    if (!("erro" in conteudo)) {
        //Atualiza os campos com os valores.
        document.getElementById('rua').value = (conteudo.logradouro);
        document.getElementById('bairro').value = (conteudo.bairro);
        document.getElementById('cidade').value = (conteudo.localidade);
        document.getElementById('uf').value = (conteudo.uf);
        document.getElementById('ibge').value = (conteudo.ibge);
    } //end if.
    else {
        //CEP não Encontrado.
        limpa_formulário_cep();
        alert("CEP não encontrado.");
    }
}

function pesquisacep(valor) {

    //Nova variável "cep" somente com dígitos.
    var cep = valor.replace(/\D/g, '');

    //Verifica se campo cep possui valor informado.
    if (cep != "") {

        //Expressão regular para validar o CEP.
        var validacep = /^[0-9]{8}$/;

        //Valida o formato do CEP.
        if (validacep.test(cep)) {

            //Preenche os campos com "..." enquanto consulta webservice.
            document.getElementById('rua').value = "...";
            document.getElementById('bairro').value = "...";
            document.getElementById('cidade').value = "...";
            document.getElementById('uf').value = "...";
            document.getElementById('ibge').value = "...";

            //Cria um elemento javascript.
            var script = document.createElement('script');
            
            //Sincroniza com o callback.https://viacep.com.br/ws/29313667/json/
            script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

            //Insere script no documento e carrega o conteúdo.
            document.body.appendChild(script);

        } //end if.
        else {
            //cep é inválido.
            limpa_formulário_cep();
            alert("Formato de CEP inválido.");
        }
    } //end if.
    else {
        //cep sem valor, limpa formulário.
        limpa_formulário_cep();
    }
};