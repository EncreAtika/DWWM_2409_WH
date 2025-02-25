let taille = 16;

const addWeight = document.querySelector(".add-weight");
const lessWeight = document.querySelector(".less-weight");
// NE SERT PLUS : const tailleActuelle = document.querySelector("#taille-actuelle");
const tailleActuelleInput = document.getElementById("taille-actuelle");
const texte = document.querySelector("#texte");

tailleActuelleInput.innerHTML = taille;




addWeight.addEventListener("click", function() {
  if (taille < 48) {
    taille++;
    document.querySelector("#taille-actuelle").value = taille;
    document.querySelector("p").style.fontSize = taille + "px";
   /// displayAllInfo(taille)
  } else {
    taille = 16;
    document.querySelector("#taille-actuelle").value = taille;
    document.querySelector("p").style.fontSize = taille + "px";
   /// displayAllInfo(taille)
  }
});

lessWeight.addEventListener("click", function(){
  if (taille > 8) {
    taille--;
    document.querySelector("#taille-actuelle").value = taille;
    document.querySelector("p").style.fontSize = taille + "px";
   // displayAllInfo(taille)
  } else {
    taille = 16;
    document.querySelector("#taille-actuelle").value = taille;
    document.querySelector("p").style.fontSize = taille + "px";
  //  displayAllInfo(taille)
  }
});

tailleActuelleInput.addEventListener("input", function(e) {
    
    if( e.target.value<8 || e.target.value>48) {

        e.target.value = 16 ;
    }
})

const displayAllInfo = (taille) => {
    tailleActuelleInput.innerHTML = taille;
    texte.style.fontSize = taille + "px";
    tailleActuelleInput.value = taille;
}



/*TENTATIVE RATEE :

tailleActuelleInput.addEventListenerById("input", function () {
    if (taille>8) {
        taille--;
        tailleActuelle.innerHTML = taille;
        texte.style.fontSize = taille + "px";
    }

    else if (taille < 48) {
        taille++;
        tailleActuelle.innerHTML = taille;
        texte.style.fontSize = taille + "px";

    }

    else {
        taille = 16; 
        tailleActuelle.innerHTML = taille;
        texte.style.fontsize = taille + "px";
    }

});*/
