var radios = document.getElementsByName("user[tipo]");
for (i = 0; i < radios.length; i++) {
  radios[i].addEventListener("change", alteraView);
}

function alteraView() {
    var temp_radios = document.getElementsByName("user[tipo]");
    for (i = 0; i < temp_radios.length; i++) {
        var info_tipo = document.getElementById(temp_radios[i].value)
        if(temp_radios[i].checked){
            info_tipo.style.display = 'block';  
        }
        else{
            var campos_tipo = info_tipo.getElementsByTagName('input'); 
            for (j = 0; j < campos_tipo.length; j++) campos_tipo[j].value = ''; 
            info_tipo.style.display = 'none';
        }
    }
}