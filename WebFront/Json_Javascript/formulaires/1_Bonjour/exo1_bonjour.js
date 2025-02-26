const prenomInput = document.querySelector("#prenom-input");
const ageInput = document.querySelector("#age-input");
const validBtn = document.querySelector(".valid-btn");
const viderBtn = document.querySelector(".vider-btn");
const resultat = document.querySelector("#resultat");

resultat.innerHTML = "Compléter/corriger le formulaire.";

validBtn.addEventListener("click", (e) => {
  e.preventDefault();
  if (prenomInput.value != "" && ageInput.value != "" && ageInput.value > 0 && ageInput.value < 120) {
      resultat.innerHTML = ""
    const bonjourBloc = document.createElement("p");
    resultat.append(bonjourBloc);
    bonjourBloc.innerHTML = `Bonjour ${prenomInput.value}, votre âge est : ${ageInput.value} ans`;

    const statutBloc = document.createElement("p");
    resultat.append(statutBloc);
    if (ageInput.value >= 18) {
      statutBloc.innerHTML = `Vous êtes majeur!`;
    } else {
      statutBloc.innerHTML = `Vous êtes mineur!`;
    }

    const statutRetraite = document.createElement("p");
    resultat.append(statutRetraite);
    if (ageInput.value < 64) {
      statutRetraite.innerHTML = `Il vous reste ${64 - ageInput.value} année(s) avant la retraite.`;
    } 
    else if (ageInput.value > 64) {
        statutRetraite.innerHTML = `Vous êtes à la retraite depuis ${ageInput.value - 64} année(s).`;
    } 
    else {
      statutRetraite.innerHTML = `Vous êtes à la retraite depuis cette année !`;
    }
  } else {
    resultat.innerHTML = "Compléter/corriger le formulaire.";
  }
});

viderBtn.addEventListener("click", () => {
  prenomInput.value = "";
  ageInput.value = "";
  resultat.innerHTML = "Compléter/corriger le formulaire.";
});
