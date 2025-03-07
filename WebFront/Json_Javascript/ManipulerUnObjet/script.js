const myEmployee = {
    lastname: "Doe", 
    firstname: "John", 
    birthday: "1981-11-12", 
    salary: 2150
} 

const main = document.querySelector("main");
const h1 = document.querySelector("h1");
const table = document.querySelector("table");
const thead = document.querySelector("thead");
const tbody= document.querySelector("tbody");
const paragraphe = document.querySelector("#paragraphe");
const form = document.querySelector("form");
const label = document.querySelector("label");
const inputFirstname = document.querySelector("#input-firstname");
const inputLastname = document.querySelector("#input-lastname");
const inputDate = document.querySelector("#input-date");
const inputSalary = document.querySelector("#input-salary");
const btn = document.querySelector(".btn");
const btnRecord = document.querySelector("#btn-record");

const myHead = table.createTHead();
const titleRow = myHead.insertRow();
const title = [
    "prenom", "nom", "email", "salaire"
]

title.forEach((t) => {
    let myCell = document.createElement("th");
    myCell.textContent = t;
    titleRow.appendChild(myCell);
});

const display = () => {

    tbody.innerText = "";
    ul.innerText = "";

    people.myEmployee((myEmp, index) => {

        const row = tbody.insertRow(index);
        const td1 = row.insertCell(0);
        const td2 = row.insertCell(1);
        const td3 = row.insertCell(2);
        const td4 = row.insertCell(3);

        const firstname1 = firstname.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
        const lastname1 = lastname.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
        const email = `${firstname1.toLowerCase()}.${lastname1.toLowerCase()}@example.com`;
         
        td1.innerText = firstname;
        td2.innerText = lastname;
        td3.innerText = email;
        td4.innerText = salary;

    })}
