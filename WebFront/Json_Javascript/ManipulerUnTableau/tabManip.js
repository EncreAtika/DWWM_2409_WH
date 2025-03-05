const people = ['Mike Dev', 'John Makenzie', 'Léa Grande'];

const ul = document.querySelector("ul")
const table = document.querySelector("table")
const tbody = document.querySelector("tbody")

const inputFirstname = document.querySelector("#input-firstname")
const inputLastname = document.querySelector("#input-lastname")
const btnAdd = document.querySelector("#btn-add")


people.forEach((p, index) => {
    const li = document.createElement("li")
    li.innerText = p
    ul.append(li)

    const row = tbody.insertRow(index)
    const td1 = row.insertCell(0)
    const td2 = row.insertCell(1)
    const td3 = row.insertCell(2)
    const td4 = row.insertCell(3)

    const lastname = p.split(" ")[1]
    const firstname = p.split(" ")[0]
    const email = `${firstname.toLowerCase()}.${lastname.toLowerCase()}@example.com`
   
    td1.innerText = lastname
    td2.innerText = firstname
    td3.innerText = email
    td4.innerHTML = `<a href="" id="${index}">X</a>`
})
