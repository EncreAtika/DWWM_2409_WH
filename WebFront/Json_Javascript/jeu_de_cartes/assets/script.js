const tHead = document.querySelector("thead");
const tBody = document.querySelector("tbody");

let cards = [];

const getCards = async () => {
    try {
        const response = await fetch(
            "https://arfp.github.io/tp/web/javascript/03-cardgame/cardgame.json"
        );
        if (!response.ok) {
            throw new Error("Erreur pendant le chargement des cartes !");
        }
        cards = await response.json();
        display();
    } catch (error) {
        console.log(error);
        cards = [];
    }
};

/*
    CREATION de l'en-tête du tableau (tHead)
    Pour cela il faut créer une ligne (tr) dans le tHead et ajouter des cellules d'en-tête (th)
    pour chaque colonne
 */
const display = () => {
    tBody.textContent = ""; // efface le contenu précedent du tBody à chaque appel de la fonction

    // Création de l'en-tête du tableau
    const myHeaders = [
        "id",
        "name",
        "level",
        "description",
        "power",
        "attack",
        "armor",
        "damage",
        "mitigation",
        "played",
        "victory",
        "defeat",
        "draw",
    ];

    const tHeadRow = tHead.insertRow();
    myHeaders.forEach((headerText) => {
        const th = document.createElement("th");
        th.textContent = headerText;
        tHeadRow.append(th);
    });

    cards.forEach((card) => {
        const tBodyRow = tBody.insertRow();
        const tdId = tBodyRow.insertCell();
        const tdName = tBodyRow.insertCell();
        const tdLevel = tBodyRow.insertCell();
        const tdDescription = tBodyRow.insertCell();
        const tdPower = tBodyRow.insertCell();
        const tdAttack = tBodyRow.insertCell();
        const tdArmor = tBodyRow.insertCell();
        const tdDamage = tBodyRow.insertCell();
        const tdMitigation = tBodyRow.insertCell();
        const tdPlayed = tBodyRow.insertCell();
        const tdVictory = tBodyRow.insertCell();
        const tdDefeat = tBodyRow.insertCell();
        const tdDraw = tBodyRow.insertCell();

        tdId.textContent = card.id;
        tdName.textContent = card.name;
        tdLevel.textContent = card.level;
        tdDescription.textContent = card.description;
        tdPower.textContent = card.power;
        tdAttack.textContent = card.attack;
        tdArmor.textContent = card.armor;
        tdDamage.textContent = card.damage;
        tdMitigation.textContent = card.mitigation;
        tdPlayed.textContent = card.played;
        tdVictory.textContent = card.victory;
        tdDefeat.textContent = card.defeat;
        tdDraw.textContent = card.draw;
    });

    const maxPlayed = cards.sort((a, b) => b.played - a.played);
    console.log(maxPlayed[0]);
};

getCards();

/* TENTATIVE DE GALERIENNE 1 :

const display = () => {
    // cards.forEach((card) => {
        //c onsole.log(card.damage);       
    // })
    // 
    //
    //thead.innerText = "";
    //const myTheadRow = thead.insertRow();

    *** tentative de créer des éléments td (cellules de tableau) individuellement.
 Mais les données cards n'ont pas été itéré pour créer une ligne (tr) pour chaque carte :

    tBody.innerText = "";
    const tBodyRow = tbody.insertRow()

    let  cellId = document.createElement("td")
    let  cellName = document.createElement("td")
    let  cellLevel = document.createElement("td")
    let  cellDescription = document.createElement("td")
    let  cellPower = document.createElement("td")
    let  cellAttack = document.createElement("td")
    let  cellArmor = document.createElement("td")
    let  cellDamage = document.createElement("td")
    let  cellMitigation = document.createElement("td")
    let  cellPlayed = document.createElement("td")
    let  cellVictory = document.createElement("td")
    let  cellDefeat = document.createElement("td")
    let  cellDraw = document.createElement("td")


    *** tBodyRow est appelé comme une variable mais également comme une fonction. 
   Tentative d'ajouter les cellules à tBodyRow avant de les ajouter à une 
   ligne tr. Il faut d'abord créer la ligne, puis ajouter les cellules à cette ligne.

    tBodyRow.append(
        cellId,
        cellName,
        cellLevel,
        cellDescription,
        cellPower,
        cellAttack,
        cellArmor,
        cellDamage,
        cellMitigation,
        cellPlayed,
        cellVictory,
        cellDefeat,
        cellDraw       
    )

}

display();

getCards()*/

/* TENTATIVE DE GALERIENNE 2 :

const display = (card_) => {
    tBody.textContent = "";

    cards.forEach((card) => {
        const tr = document.createElement("tr");

        *** Cration d'élèments td sans valeurs attribuées (contenu cellules vides). Oubli d'ajouter la ligne tr au tbody 


        const tdId = document.createElement("td");
        const tdName = document.createElement("td");
        const tdLevel = document.createElement("td");
        const tdDescription = document.createElement("td");
        const tdPower = document.createElement("td");
        const tdAttack = document.createElement("td");
        const tdArmor = document.createElement("td");
        const tdDamage = document.createElement("td");
        const tdMitigation = document.createElement("td");
        const tdPlayed = document.createElement("td");
        const tdVictory = document.createElement("td");
        const tdDefeat = document.createElement("td");
        const tdDraw = document.createElement("td");

        tr.append(tdId, tdName, tdLevel, tdDescription, tdPower, tdAttack, tdArmor, tdDamage, tdMitigation,tdPlayed, tdVictory, tdDefeat, tdDraw)


    });
}*/
