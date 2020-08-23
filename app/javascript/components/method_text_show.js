import MarkdownIt from 'markdown-it';

const loadMethodTextShow = () => {
  const methodText = document.getElementById('method-content');
  const methodDiv = document.getElementById('method-render');
  const markdown = new MarkdownIt();

  if (methodText) {
    const html = markdown.render(methodText.value);
    methodDiv.innerHTML = html;
  }
};

export { loadMethodTextShow };
