const addButton = document.querySelector(".add");
const resetButton = document.querySelector(".reset");
const counterSpan = document.querySelector("#counter");

// cette methode est pour les grosses fonctions
const reset = () => {
    counterSpan.innerHTML = 0;
}
resetButton.addEventListener("click", reset); 

// cette methode est bien adaptée pour les petites fonctions
addButton.addEventListener("click", () => { 
    counterSpan.innerHTML++;
})


