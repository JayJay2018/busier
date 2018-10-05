function addActiveClass () {
  document.querySelectorAll('.btn').forEach((btn) => {
    btn.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle('active');
    });
  });
}

export { addActiveClass };
