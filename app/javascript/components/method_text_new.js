import MarkdownIt from 'markdown-it';

const loadMethodTextNew = () => {
  const textarea = document.getElementById('method');
  const preview = document.getElementById('preview');
  const markdown = new MarkdownIt();

  if (textarea) {
    textarea.addEventListener('keyup', (event) => {
    const html = markdown.render(textarea.value);
    preview.innerHTML = html;
    });
  }
};

export { loadMethodTextNew };
