let taille = 16;

const addWeight = document.querySelector(".add-weight");
const lessWeight = document.querySelector(".less-weight");
const tailleActuelle = document.querySelector("#taille-actuelle");
const texte = document.querySelector("#texte");

tailleActuelle.innerHTML = taille;

addWeight.addEventListener("click", () => {
  if (taille < 48) {
    taille++;
    tailleActuelle.innerHTML = taille;
    texte.style.fontSize = taille + "px";
  } else {
    taille = 16;
    tailleActuelle.innerHTML = taille;
    texte.style.fontSize = taille + "px";
  }
});

lessWeight.addEventListener("click", () => {
  if (taille > 8) {
    taille--;
    tailleActuelle.innerHTML = taille;
    texte.style.fontSize = taille + "px";
  } else {
    taille = 16;
    tailleActuelle.innerHTML = taille;
    texte.style.fontSize = taille + "px";
  }
});
