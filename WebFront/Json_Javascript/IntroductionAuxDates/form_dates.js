const saisie = document.querySelector("#birthday");
/*Sélectionne l'élément input avec l'ID birthday et 
le stocke dans la constante saisie. */

const leCalcul = document.querySelector("#calculer");
const renduSaisie = document.querySelector("#renduSaisie");
const leResultat = document.querySelector("#leResultat");

leCalcul.addEventListener("click", function () {
  let chaineDate = saisie.value;

  //console.log(chaineDate) --> contôle via la console;
  const currentDate = new Date();
  let dateSaisie = new Date(chaineDate);
  /* Crée un objet Date à partir de la chaîne de date saisie.*/

  console.log(currentDate.getFullYear() - dateSaisie.getFullYear());

  let dateFr = dateSaisie.toLocaleDateString();
  let timeFr = dateSaisie.toLocaleTimeString();

  const differenceAnnee = currentDate.getFullYear() - dateSaisie.getFullYear();
  if (currentDate < dateSaisie) {
    renduSaisie.innerHTML = "";
    leResultat.innerHTML = `Date invalide, veuillez recommancer.`;
  } else {
    renduSaisie.innerHTML = `Vous êtes né le <span class="surlignage">${dateFr}</span> à <span class="surlignage">${timeFr}</span>`;
    leResultat.innerHTML = `Il s'est écoulé ${differenceAnnee} années depuis votre naissance.`;
  }

  // let month = dateSaisie.getMonth() < 10 ? `0${dateSaisie.getMonth() + 1}` : dateSaisie.getMonth() + 1
  // ligne ci dessus est une condition ternaire, elle donne le même résultat que ci-dessous mais sous une forme plus concise.
  /*let month 
    if(dateSaisie.getMonth() < 10) {
        month = `0${dateSaisie.getMonth() + 1}`        
    }
    else {
        month = dateSaisie.getMonth() + 1
    }*/

  //leResultat.innerText = $"{dateFr} {timeFr}"; <== Java
  //leResultat.innerText = dateFr + ' ' + timeFr; <== concaténation, idem qu'en dessous
  //leResultat.innerHTML = `Vous êtes né le <span class="surlignage">${dateFr}</span> à <span class="surlignage">${timeFr}</span>`;
});
