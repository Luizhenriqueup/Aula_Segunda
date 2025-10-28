function exibir(){
    document.getElementById('texto').innerHTML = 'Seu mouse está sobre o texto';
}
function sumiu(){
    document.getElementById('texto').innerHTML = ''
}
function mudacor(){
    let cor= document.getElementById('cor').style.color
    if(cor == 'yellow'){
        document.getElementById('cor').style.color = 'blue'
    }else{
        document.getElementById('cor').style.color = 'yellow'
    }
    
}
function ligar(){
    let acender = document.getElementById('lamp').src;
    if(acender.includes("pic_bulboff.gif")){
        document.getElementById('lamp').src='img/pic_bulbon.gif'
    }else{
        document.getElementById('lamp').src='img/pic_bulboff.gif'
    }
    
}


// Crie um nova seção no html
/*
desenvolva um botão que ao receber um clique mude a cor de um ou mais elementos
*/