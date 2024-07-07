//Function for viewing the mobile menu
const menu = document.querySelector("#mobile-menu");
const menuIcon = document.querySelector("#menu-btn");
function viewMobileMenu() {
  menu.classList.toggle("flex");
  menu.classList.toggle("hidden");
  if (menu.classList.contains("flex")) {
    menuIcon.src = "/icons/close_icon.svg";
  } else {
    menuIcon.src = "/icons/menu_icon.svg";
  }
}

//Submit Subscribe button
// const form = document.getElementById("subscribeForm");
// form.addEventListener("submit", (event) => {
//   event.preventDefault(); // Prevent default form submission

//   const formData = new FormData(form);
//   const email = formData.get("email");

//   fetch("/", {
//     method: "POST",
//     headers: {
//       "Content-Type": "application/json",
//     },
//     body: JSON.stringify({ email }),
//   })
//     .then((response) => response.json())
//     .then((data) => {
//       console.log(data);
//       form.reset();
//       showMessage(data.message);
//     })
//     .catch((error) => console.error("Error:", error));
// });

// function showMessage(message) {
//   const messageDiv = document.getElementById("message");
//   messageDiv.innerText = message;
//   messageDiv.style.display = "block";
//   setTimeout(() => {
//     messageDiv.style.display = "none";
//   }, 500); 
// }

//view blogs
const hero = document.querySelector(".hero");
const blogs = document.querySelector(".blogs");
const contact = document.querySelector(".contact");

function viewHero() {
  hero.scrollIntoView({ behavior: "smooth" });
  if (menu.classList.contains("flex")) {
    viewMobileMenu();
  }
}

function viewBlogs() {
  blogs.scrollIntoView({ behavior: "smooth" });
  if (menu.classList.contains("flex")) {
    viewMobileMenu();
  }
}

function viewContact() {
  contact.scrollIntoView({ behavior: "smooth" });
  if (menu.classList.contains("flex")) {
    viewMobileMenu();
  }
}

const contactForm = document.querySelector(".contactForm");
contactForm.addEventListener("submit", () => {
  form.reset();
})