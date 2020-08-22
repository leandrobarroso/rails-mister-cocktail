import Typed from 'typed.js';

const loadDynamicSearchText = () => {
  new Typed('#search-input', {
    strings: ['Search cocktails', 'Find by name'],
    startDelay: 1000,
    typeSpeed: 100,
    backSpeed: 100,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
}

export { loadDynamicSearchText };
