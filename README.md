# EMO-BON Data Workflow Handbook

A comprehensive reference to our EMO-BON data workflow, covering naming conventions, workflow descriptions, URI namespace documentation, glossary terms, and DevOps guidelines.

## About

This handbook provides documentation for the EMO-BON (European Marine Omics Biodiversity Observation Network) data workflow, including:

- Data management processes and workflows
- Data sources and products
- Technical infrastructure and components
- Standards and conventions
- Glossary of terms and concepts

## Viewing the Book

The published book is available at: https://data.emobon.embrc.eu/data-workflow-book/

## Building Locally

To build and view the book locally:

### Prerequisites

- Python 3.11+
- Node.js 18+

### Setup

1. Clone the repository:
```bash
git clone https://github.com/emo-bon/data-workflow-book.git
cd data-workflow-book
```

2. Install Python dependencies:
```bash
pip install -r requirements.txt
```

3. Install MyST Markdown:
```bash
npm install -g mystmd
```

### Build

Build the book:
```bash
cd book
myst build --html
```

The built HTML will be in `book/_build/html/`.

### Preview

Start a local server to preview:
```bash
cd book
myst start
```

Then open your browser to the URL shown (typically http://localhost:3000).

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch
3. Make your changes in the `book/` directory
4. Test your changes locally
5. Submit a pull request

## Structure

```
data-workflow-book/
├── book/                    # MyST book source
│   ├── myst.yml            # Book configuration
│   ├── index.md            # Book homepage
│   ├── 01-introduction/    # Chapter 1
│   ├── 02-data-management-flow/
│   ├── 03-data-sources/
│   ├── 04-data-products/
│   ├── 05-data-graph/
│   ├── 06-conformance/
│   ├── 07-technical-details/
│   ├── 08-addendum/
│   └── 09-data-paper/
├── .github/workflows/      # GitHub Actions
├── requirements.txt        # Python dependencies
├── CNAME                   # Custom domain
└── README.md              # This file
```

## Technology

This book is built with:
- [MyST Markdown](https://mystmd.org/) - Modern, extensible markdown for scientific content
- [GitHub Actions](https://github.com/features/actions) - Automated building and deployment
- [GitHub Pages](https://pages.github.com/) - Static site hosting

## License

The content of this handbook is licensed under [CC-BY-4.0](LICENSE).

## Contact

- Email: opsci@vliz.be
- GitHub: [EMO-BON organization](https://github.com/emo-bon)

