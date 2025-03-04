const saisie = document.querySelector("#birthday");
const leCalcul = document.querySelector("#calculer");
const renduSaisie = document.querySelector("#renduSaisie");
const leResultat = document.querySelector("#leResultat");
const votreSigne = document.querySelector("#votreSigne");
const caseCocher = document.querySelector(".caseCocher");
const inputFemme = caseCocher.querySelector("#femme");
const inputHomme = caseCocher.querySelector("#homme");

leCalcul.addEventListener("click", function () {
  let chaineDate = saisie.value;
  const currentDate = new Date();
  let dateSaisie = new Date(chaineDate);

  let dateFr = dateSaisie.toLocaleDateString();
  let timeFr = dateSaisie.toLocaleTimeString();

  if (
    saisie.value != "" &&
    dateFr != "Invalid Date" &&
    timeFr != "Invalid Date" &&
    (inputFemme.checked || inputHomme.checked)
  ) {
    const differenceAnnee =
      currentDate.getFullYear() - dateSaisie.getFullYear();

    leResultat.innerHTML = `Il s'est écoulé ${differenceAnnee} années depuis votre naissance.`;
    votreSigne.innerHTML = `<hr>Votre signe astrologique : <span class="surlignage">${quelSigne(
      dateSaisie.getDate(),
      dateSaisie.getMonth()
    )}</span>.`;

    if (currentDate < dateSaisie) {
      renduSaisie.innerHTML = "";
      votreSigne.innerHTML = "";
      leResultat.innerHTML = `<hr>Date invalide, votre date de naissance doit être antérieure à la date du jour, veuillez recommancer.`;
    } else if (inputFemme.checked) {
      renduSaisie.innerHTML = `<hr>Madame, Vous êtes née le <span class="surlignage">${dateFr}</span> à <span class="surlignage">${timeFr}</span>`;
    } else {
      renduSaisie.innerHTML = `<hr>Monsieur, Vous êtes né le <span class="surlignage">${dateFr}</span> à <span class="surlignage">${timeFr}</span>`;
    }
  } else {
    leResultat.innerHTML = `<hr>Veuillez remplir tous les champs du formulaire correctement.`;
    votreSigne.innerHTML = "";
    renduSaisie.innerHTML = "";
  }
});

function quelSigne(day, month) {
  const signes_zodiaque = {
    capricorn: "Capricorne",
    aquarius: "Verseau",
    pisces: "Poisson",
    aries: "Bélier",
    taurus: "Taureau",
    gemini: "Gémeau",
    cancer: "Cancer",
    leo: "Lion",
    virgo: "Vierge",
    libra: "Balance",
    scorpio: "Scorpion",
    sagittarius: "Sagittaire",
  };

  if ((month == 0 && day <= 19) || (month == 11 && day >= 22)) {
    return signes_zodiaque.capricorn;
  } else if ((month == 0 && day >= 20) || (month == 1 && day <= 18)) {
    return signes_zodiaque.aquarius;
  } else if ((month == 1 && day >= 19) || (month == 2 && day <= 20)) {
    return signes_zodiaque.pisces;
  } else if ((month == 2 && day >= 21) || (month == 3 && day <= 19)) {
    return signes_zodiaque.aries;
  } else if ((month == 3 && day >= 20) || (month == 4 && day <= 20)) {
    return signes_zodiaque.taurus;
  } else if ((month == 4 && day >= 21) || (month == 5 && day <= 20)) {
    return signes_zodiaque.gemini;
  } else if ((month == 5 && day >= 21) || (month == 6 && day <= 22)) {
    return signes_zodiaque.cancer;
  } else if ((month == 6 && day >= 23) || (month == 7 && day <= 22)) {
    return signes_zodiaque.leo;
  } else if ((month == 7 && day >= 23) || (month == 8 && day <= 22)) {
    return signes_zodiaque.virgo;
  } else if ((month == 8 && day >= 23) || (month == 9 && day <= 22)) {
    return signes_zodiaque.libra;
  } else if ((month == 9 && day >= 23) || (month == 10 && day <= 21)) {
    return signes_zodiaque.scorpio;
  } else if ((month == 10 && day >= 22) || (month == 11 && day <= 21)) {
    return signes_zodiaque.sagittarius;
  }
}
