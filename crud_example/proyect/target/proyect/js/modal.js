
let updateButtons = document.querySelectorAll(".btncal");

updateButtons.forEach(function(button) {
    button.addEventListener("click", function() {
        let modal = document.getElementById("myModal1");
        let form = modal.querySelector("form");

        // Obtener los valores ingresados por el usuario en la tarjeta
        let userId = button.getAttribute("data-user-id");
        let userFirstname = button.parentElement.querySelector(".cardname").textContent;
        let userLastname = button.parentElement.querySelector(".cardlastname").textContent;
        let userEmail = button.parentElement.querySelector(".cardemail").textContent;
        let userPassword = button.parentElement.querySelector(".cardpassword").textContent;

        // Llenar los campos en la ventana modal con los valores obtenidos
        form.user_id.value = userId;
        form.user_firstname.value = userFirstname;
        form.user_lastname.value = userLastname;
        form.user_email.value = userEmail;
        form.user_password.value = userPassword;

        // Mostrar la ventana modal
        modal.style.display = "block";
    });
});

// Aquí, getUserById() es una función ficticia, debes implementarla para obtener los datos del usuario por su ID
function getUserById(userId, callback) {
    // Aquí, realiza una solicitud AJAX al servidor o cualquier otra lógica para obtener los datos del usuario
    // Supongamos que userData es un objeto que contiene la información del usuario por su ID
    let userData = {
        user_id: userId,
        user_firstname: userFirstname,
        user_lastname: userLastname,
        user_email: userEmail,
        user_password: userPassword
    };

    // Llamar al callback con los datos del usuario
    callback(userData);
}

// Evento de cierre de la ventana modal
let modal = document.getElementById("myModal1");
let closeBtn = document.querySelector(".close1");

closeBtn.addEventListener("click", function() {
    modal.style.display = "none";
});

window.addEventListener("click", function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
});
