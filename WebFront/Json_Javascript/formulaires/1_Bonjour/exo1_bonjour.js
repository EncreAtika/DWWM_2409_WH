const prenomInput = document.querySelector("#prenom-input");
const ageInput = document.querySelector("#age-input");
const validBtn = document.querySelector(".valid-btn");
const viderBtn = document.querySelector(".vider-btn");
const resultat = document.querySelector("#resultat");

resultat.innerHTML = "Compléter/corriger le formulaire.";

validBtn.addEventListener("click", (e) => {
  e.preventDefault();
  if (
    prenomInput.value != "" &&
    ageInput.value != "" &&
    ageInput.value > 0 &&
    ageInput.value < 120
  ) {
    resultat.innerHTML = "";
    const bonjourBloc = document.createElement("p");
    resultat.append(bonjourBloc);
    bonjourBloc.innerHTML = `Bonjour <span style="color: #0000ff; font-weight: bold">${prenomInput.value}</span>, 
    votre âge est : <span style="color: #0000ff; font-weight: bold">${ageInput.value}</span> ans`;

    const statutBloc = document.createElement("p");
    resultat.append(statutBloc);
    if (ageInput.value >= 18) {
      statutBloc.innerHTML = `Vous êtes <span style="color: #0000ff; font-weight: bold"> majeur </span>!`;
    } else {
      statutBloc.innerHTML = `Vous êtes <span style="color: #0000ff; font-weight: bold">mineur</span>!`;
    }

    const statutRetraite = document.createElement("p");
    resultat.append(statutRetraite);
    if (ageInput.value < 64) {
      statutRetraite.innerHTML = `Il vous reste <span style="color: #0000ff; font-weight: bold">${
        64 - ageInput.value
      }</span> année(s) avant la retraite.`;
    } else if (ageInput.value > 64) {
      statutRetraite.innerHTML = `Vous êtes à la retraite depuis <span style="color: #0000ff; font-weight: bold">${
        ageInput.value - 64
      }</span> année(s).`;
    } else {
      statutRetraite.innerHTML = `Vous êtes à la retraite depuis cette année !`;
    }
    const tabSpan = document.querySelectorAll("span");

    tabSpan.forEach((e) => {
      e.style.Color = "#0000FF";
    });
  } else {
    resultat.innerHTML = "Compléter/corriger le formulaire.";
  }
});

viderBtn.addEventListener("click", () => {
  prenomInput.value = "";
  ageInput.value = "";
  resultat.innerHTML = "Compléter/corriger le formulaire.";
});
