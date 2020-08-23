// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require select2
//= require select2_locale_pt-BR

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
import 'select2';

import { initAOS } from '../plugins/init_aos';

import { loadDynamicSearchText } from '../components/search';
import { loadIngridientsSelect } from '../components/ingredients_select';
import { loadMethodTextNew } from '../components/method_text_new';
import { loadMethodTextShow } from '../components/method_text_show';

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener('turbolinks:load', () => {
  initAOS();

  loadDynamicSearchText();
  loadIngridientsSelect();
  loadMethodTextNew();
  loadMethodTextShow();
});
