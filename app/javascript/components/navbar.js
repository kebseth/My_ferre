const nav = document.querySelector('nav');
  window.addEventListener('scroll', scrollEf)

  function scrollEf() {
    if(window.scrollY) {
      nav.classList.add('black');
    } else {
      nav.classList.remove('black');

    }
  }
