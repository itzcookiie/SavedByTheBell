let  newobj = {}

document.addEventListener('DOMContentLoaded', () => {

const url = 'http://localhost:3000/api/v1/users'

const soundData = document.querySelector('#sound-container')
const account = document.querySelector('#user')
const formId = document.querySelector('#new-user-form')




handleSubmit = (e) => {
    e.preventDefault();
    const parentDiv = e.target.parentNode
    const username = document.querySelector('input[type="text"]')
    parentDiv.innerHTML =
    `
        <h1> ${username.value} </h1>
    `
    soundData.style.display = ''


    fetch(url, {
        method: 'POST', 
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify({
            username: username.value   
        })
    }).then(response => response.json())
    .then(function(obj) {
        newobj = obj
        const usersounds = document.querySelector('#user-sounds')

        console.log(obj)
        obj.sounds.forEach(sound => {
            usersounds.innerHTML +=  `
            <h3> Your Sound </h3>
            <p> Title: ${sound.title} </p>
            <p> Description: ${sound.description} </p>
            <p> <img src="${sound.image}"> </p>
            <audio controls src=${sound.audio_url}></audio>
            <hr>
            `
        })
    })
}

formId.addEventListener('submit', handleSubmit)




// fetch()
// .then(response => response.json())
// .then(renderUsers)


fetch('http://localhost:3000/api/v1/sounds')
.then(response => response.json())
.then(renderSounds)





})

const renderSounds = sounds => {
    sounds.forEach(renderSingleSound)
}

const renderSingleSound = sound => {
    const soundData = document.querySelector('#sound-container')
    const newDivSounds = document.createElement('div')

    newDivSounds.innerHTML = 
    `
    <p> Title: ${sound.title} </p>
    <p> Description: ${sound.description} </p>
    <p> <img src="${sound.image}"> </p>
    <audio controls src=${sound.audio_url}></audio>
    <button class="add-sound" id=${sound.id}> Add me to your collection </button>
    <hr>
    `
    
    soundData.appendChild(newDivSounds)


    const handleSound = (e) => {
        if(e.target.className === "add-sound"){
        console.log(e.target.id)
        fetch('http://localhost:3000/api/v1/user-sounds', {
            method: 'POST',
            headers:{"Content-Type": "application/json"},
            body: JSON.stringify({
            user_id: newobj.id,   
            sound_id: sound.id
        })
    }).then(response => response.json())
    .then(renderUserSound)
}
    }

    const renderUserSound = (obj) => {
        const usersounds = document.querySelector('#user-sounds')

        console.log(obj)

        usersounds.innerHTML =
        `
        <h3> Your Sounds </h3>
        <p> Title: ${obj.sound_id.title} </p>
        <p> Description: ${obj.sound_id.description} </p>
        <p> <img src="${obj.sound_id.image}"> </p>
        <audio controls src=${obj.sound_id.audio_url}></audio>
        <hr>
        `
    }
    
    soundData.addEventListener('click', handleSound)



    soundData.style.display = 'none'
}











const renderUsers = users => {
    renderSingleUser(users[users.length-1])
}

const renderSingleUser = user => {

    console.log(user)


    
}

// const renderSounds = sounds => {
//     sounds.forEach(renderSingleSound)
// }

