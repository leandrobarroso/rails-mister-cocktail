
const loadAddIngredientButton = () => {
  const btn = document.getElementById('add-ingredient')
  const form = document.getElementById('add-dose')
  btn.addEventListener('click', () => {
    form.classList.toggle('d-none')
  })
}

export { loadAddIngredientButton };
