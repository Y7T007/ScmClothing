let range = document.querySelector('#range');
let values = document.querySelector('.values');

range.addEventListener('input', () => {
    values.innerHTML = range.value;
    console.log(range.value);
});