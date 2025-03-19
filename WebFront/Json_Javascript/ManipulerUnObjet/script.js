const myEmployee = {
    lastname: "Doe",
    firstname: "John",
    birthday: "1981-11-12",
    salary: 2150,
};

const main = document.querySelector("main");
const h1 = document.querySelector("h1");
const myTable = document.querySelector("table");
//const thead = document.querySelector("thead");
// const tbody= document.querySelector("tbody");
const paragraphe = document.querySelector("#paragraphe");
const form = document.querySelector("form");
const label = document.querySelector("label");
const inputFirstname = document.querySelector("#input-firstname");
const inputLastname = document.querySelector("#input-lastname");
const inputDate = document.querySelector("#input-date");
const inputSalary = document.querySelector("#input-salary");
const btnRecord = document.querySelector("#btn-record");
const error = document.querySelector(".error");
const errorFirstname = document.querySelector(".error-firstname");
const errorLastname = document.querySelector(".error-lastname");
const errorDate = document.querySelector(".error-date");
const errorSalary = document.querySelector(".error-salary");

const thead = myTable.createTHead();
const tbody = myTable.createTBody();

myTable.appendChild(thead);
myTable.appendChild(tbody);

const title = ["Nom", "Prénom", "Date de naissance", "Email", "Salaire"];
const myTheadRow = thead.insertRow();

title.forEach((t) => {
    let myCell = document.createElement("th");
    myCell.textContent = t;
    myTheadRow.appendChild(myCell);
});

const display = () => {
    tbody.innerText = "";

    const myTBodyRow = tbody.insertRow();

    let myCellLastname = document.createElement("td");
    let myCellFirstname = document.createElement("td");
    let myCellBirthday = document.createElement("td");
    let myCellEmail = document.createElement("td");
    let myCellSalary = document.createElement("td");

    myCellLastname.textContent = myEmployee.lastname;
    myCellFirstname.textContent = myEmployee.firstname;
    myCellBirthday.textContent = myEmployee.birthday;
    myCellEmail.textContent = `${myEmployee.firstname.toLowerCase()}.${myEmployee.lastname.toLowerCase()}@example.com`;
    myCellSalary.textContent = myEmployee.salary + " €";

    myTBodyRow.append(
        myCellLastname,
        myCellFirstname,
        myCellBirthday,
        myCellEmail,
        myCellSalary
    );
};

display();

const errors = {
    lastname: false,
    firstname: false,
    birthday: false,
    salary: false,
};

form.addEventListener("submit", (e) => {
    e.preventDefault()
    error.innerText = "";

    const reg = /[a-zA-Z-]{2,}/;

if(inputFirstname.value != '' || inputLastname.value != '' || inputDate.value != '' || inputSalary.value != '') {
    if (reg.test(inputFirstname.value.trim())) {
        errorFirstname.innerText = "";
        errors.firstname = true;
    } else {
        errorFirstname.innerText =
            "Le prénom doit contenir au moins deux lettres et aucun chiffre";
    }
    
    if (reg.test(inputLastname.value.trim())) {
        errorLastname.innerText = "";
        errors.lastname = true;
    } else {
        errorLastname.innerText =
            "Le nom doit contenir au moins deux lettres et aucun chiffre";
    }
    
    if (new Date() > new Date(inputDate.value)) {
        errorDate.innerText = "";
        errors.birthday = true;
    } else {
        errorDate.innerText =
            "La date de naissance est obligatoirement dans le passé";
    }
    
    if (inputSalary.value > myEmployee.salary) {
        errorSalary.innerText = "";
        errors.salary = true;
    } else {
        errorSalary.innerText =
            "Le salaire ne peut être inférieur au salaire précédent";
    }
}


    if (
        errors.firstname == true &&
        errors.lastname == true &&
        errors.birthday == true &&
        errors.salary == true
    ) {
        myEmployee.firstname = inputFirstname.value.trim();
        myEmployee.lastname = inputLastname.value.trim();
        myEmployee.birthday = inputDate.value.trim();
        myEmployee.salary = inputSalary.value.trim();

        display();
    }

    // console.log(errors);
});
