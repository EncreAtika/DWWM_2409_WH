const boxForm = document.querySelector("#box-form");
const boxTable = document.querySelector("#box-table");

const form = document.querySelector("form");
const inputIdentifiant = document.querySelector("#input-identifiant");
const inputPassword = document.querySelector("#input-password");
const btnConnexion = document.querySelector("#btn-connexion");
const btnDeconnexion = document.querySelector("#btn-deconnexion");
const formError = document.querySelector("#form-error p");

const hello = document.querySelector('#hello span')

const tBody = document.querySelector("tbody");

boxTable.style.display = "none";
formError.style.display = "none";

let users = [];

const getUsers = async () => {
    try {
        const response = await fetch("./users.json");
        if (!response.ok) {
            throw new Error(
                "Problème pendant le chargement des utilisateurs !"
            );
        }
        users = await response.json();
    } catch (error) {
        console.log(error);
        users = [];
    }
};

const display = (user_) => {
    tBody.textContent = "";

    users.forEach((user) => {
        const tr = document.createElement("tr");

        if (JSON.stringify(user) === JSON.stringify(user_)) {
            tr.setAttribute("id", "current-user");
        }

        const tdLastname = document.createElement("td");
        const tdFirstname = document.createElement("td");
        const tdBirthday = document.createElement("td");
        const tdEmail = document.createElement("td");
        const tdSalary = document.createElement("td");

        tdLastname.textContent = user.lastname;
        tdFirstname.textContent = user.firstname;
        tdBirthday.textContent = user.birthday;
        tdEmail.textContent = `${user.firstname.toLowerCase()}.${user.lastname.toLowerCase()}@example.com`;
        tdSalary.textContent = `${user.salary} €`;

        tr.append(tdLastname, tdFirstname, tdBirthday, tdEmail, tdSalary);
        tBody.append(tr);
    });
};

// form.addEventListener('submit', (event) => {
btnConnexion.addEventListener("click", (event) => {
    event.preventDefault();

    if (inputIdentifiant.value.trim() && inputPassword.value) {
        const firstname = inputIdentifiant.value.split(".")[0];
        const lastname = inputIdentifiant.value.split(".")[1];
        const password = inputPassword.value;

        const userInput = users.find(
            (u) =>
                u.firstname.toLowerCase() == firstname &&
                u.lastname.toLowerCase() == lastname &&
                u.password == password
        );

        if (userInput) {
            hello.textContent = `${userInput.firstname} ${userInput.lastname}`
            boxForm.style.display = "none";
            boxTable.style.display = "flex";
            formError.style.display = "none";

            display(userInput);
        } else {
            formError.style.display = "block";
            formError.textContent = "Identifiant ou mot de passe incorrect";
        }
    } else {
        formError.style.display = "block";
        formError.textContent = "Veuillez remplir tous les champs";
    }
});

btnDeconnexion.addEventListener("click", () => {
    boxForm.style.display = "flex";
    boxTable.style.display = "none";
});

getUsers();
