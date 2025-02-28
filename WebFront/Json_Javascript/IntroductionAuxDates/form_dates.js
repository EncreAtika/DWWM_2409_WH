const saisie= document.querySelector("#birthday");
const leCalcul = document.querySelector("#calculer");
const leResultat = document.querySelector("#leResultat");


leCalcul.addEventListener("click", function(){
    let chaineDate=saisie.value;
    //console.log(chaineDate);
    let dateSaisie = new Date(chaineDate);
    console.log(dateSaisie);

    let tabDate=(dateSaisie.toDateString()).split("T");
    //console.log(tabDate[0]);

    let dateFr = dateSaisie.getFullYear() + "/" + (dateSaisie.getMonth()+1) + "/"+ dateSaisie.getDate();
    console.log(dateFr);

leResultat.textContent=dateFr;


})