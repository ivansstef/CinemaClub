// Очікуємо повного завантаження сторінки
document.addEventListener("DOMContentLoaded", () => {
  const joinBtn = document.querySelector(".btn");

  if (joinBtn) {
    joinBtn.addEventListener("click", () => {
      alert("Дякуємо за інтерес! Скоро буде можливість приєднатися до CinemaClub 🎬");
    });
  }

  // Підказка: тут можна додати майбутню логіку для:
  // - голосувань
  // - перегляду фільмів
  // - додавання до списку улюблених
  // - календаря подій
});
