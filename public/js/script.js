//Function for viewing the mobile menu
function viewMobileMenu() {
  const menu = document.querySelector("#mobile-menu");
  const menuIcon = document.querySelector("#menu-btn");
  menu.classList.toggle("flex");
  menu.classList.toggle("hidden");
  if (menu.classList.contains("flex")) {
    menuIcon.src = "/icons/close_icon.svg";
  } else {
    menuIcon.src = "/icons/menu_icon.svg";
  }
}

//show subscribe message
function showMessage(message) {
  const messageDiv = document.getElementById("message");
  messageDiv.innerText = message;
  messageDiv.style.display = "block";
  setTimeout(() => {
    messageDiv.style.display = "none";
  }, 500); // Show message for 500ms
}

document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("subscribeForm");
  form.addEventListener("submit", (event) => {
    event.preventDefault();
    const formData = new FormData(form);
    const email = formData.get("email");

    fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ email }),
    })
      .then((response) => response.json())
      .then((data) => {
        showMessage(data.message);
      })
      .catch((error) => console.error("Error:", error));
  });
});
