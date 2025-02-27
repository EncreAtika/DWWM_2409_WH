const people = ["Kriss De Valnor", "Misake", "foxy Brown"];

const liste = document.querySelector("#inscrit");

liste.setAttribute("style", "list-style:none; color:#ACCBE1");

document.body.style.backgroundColor = "#536B78";

document.querySelector("#filet")
  .setAttribute("style", "border:2px dashed #ACCBE1");

for (let i = 0; i < people.length; i++) {
  let monItem = document.createElement("li");
  monItem.setAttribute("style", "font-family:tahoma; font-size:1.6em");
  monItem.textContent = people[i];
  liste.appendChild(monItem);
  /*mettre un noeud enfant (balise html)*/
}
