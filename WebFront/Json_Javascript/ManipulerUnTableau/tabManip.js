const people = ['Mike Dev', 'John Makenzie', 'Léa Grande'];

const ul = document.querySelector("ul");
const table = document.querySelector("table");
const tbody = document.querySelector("tbody");
const formMessage = document.querySelector("#form-message");
const message = document.querySelector("#message");
const inputFirstname = document.querySelector("#input-firstname");
const inputLastname = document.querySelector("#input-lastname");
const btnAdd = document.querySelector("#btn-add");
const form = document.querySelector("form");

const myHead = table.createTHead();
const titleRow = myHead.insertRow();
const title = [
    "nom", "prenom", "email", "supprimer"
]

title.forEach((t) => {
    let myCell = document.createElement("th");
    myCell.textContent = t;
    titleRow.appendChild(myCell);
});


const display = () => {

    tbody.innerText = "";
    ul.innerText = "";

    if(people.length > 0) {

        table.style.display = "";
        message.innerText = "";

        people.forEach((p, index) => {

            const li = document.createElement("li")
            li.textContent = p
            ul.append(li)
        
            const row = tbody.insertRow(index);
            const td1 = row.insertCell(0);
            const td2 = row.insertCell(1);
            const td3 = row.insertCell(2);
            const td4 = row.insertCell(3);
        
            const lastname = p.split(" ")[1];
            const firstname = p.split(" ")[0];
            // const firstname1 = firstname.replace("é", "e"); supprimer les accents et autre méthode ci dessous
            const firstname1 = firstname.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
            const lastname1 = lastname.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
            const email = `${firstname1.toLowerCase()}.${lastname1.toLowerCase()}@example.com`;
           
            td1.innerText = lastname;
            td2.innerText = firstname;
            td3.innerText = email;
            td4.innerHTML = `<a href="" id="${index}" class="deleted">X</a>`;
        })
    
        const deletable = document.querySelectorAll(".deleted");
        
        deletable.forEach(d => {
            d.addEventListener("click", (event) => {
                event.preventDefault();
                people.splice(d.id, 1);
                display();
            })
        })
    }
    else{
        table.style.display = "none";
        message.innerText = "La liste est vide !";
    }
}

form.addEventListener("submit", (event) => {
    event.preventDefault();

    const reg =/[a-zA-Z-]{2,}/
    
    if(reg.test(inputFirstname.value.trim()) && reg.test(inputLastname.value.trim()))  {
        const firstname = `${String(inputFirstname.value.trim()).charAt(0).toUpperCase()}${String(inputFirstname.value.trim()).slice(1).toLowerCase()}`
        const lastname = `${String(inputLastname.value.trim()).charAt(0).toUpperCase()}${String(inputLastname.value.trim()).slice(1).toLowerCase()}`

        if(!people.includes(firstname.trim() + ' ' + lastname.trim())) {
            formMessage.innerHTML = `<p class="success">${firstname.trim()} ${lastname.trim()} ajouté !</p>`
            people.push(firstname.trim() + ' ' + lastname.trim());

            display();
        }
        else { 
        formMessage.innerHTML = `<p class="error">Il ne peut y avoir deux personnes qui portent à la fois le même nom et prénom, veuillez recommencer !</p>`

        }
    }
    else { 
        formMessage.innerHTML = `<p class="error">Le nom est le prénom doivent contenir au moins deux lettres, veuillez recommencer !</p>`

    }

})

display();
