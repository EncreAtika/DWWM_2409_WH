let taille = 16;

const addWeight = document.querySelector(".add-weight");
const tailleActuelle = document.querySelector("#taille-actuelle");
const texte = document.querySelector("#texte");

tailleActuelle.innerHTML = taille;
addWeight.addEventListener("click", () => {
    taille++;
    if(taille < 48) {
        tailleActuelle.innerHTML++;
    }
    else {
        tailleActuelle.innerHTML = 16;
    }
    texte.style.fontSize = tailleActuelle.innerHTML + "px";
});
