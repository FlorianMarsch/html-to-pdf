Certainly! Here’s the `README.md` content in Markdown format:

```markdown
# HTML to PDF Script

This script converts an HTML file to a PDF using Chrome's headless mode. The script takes two parameters:
1. The **output PDF file** (which must end with `.pdf`)
2. The **HTML file** (which must end with `.html`)

---

## Requirements

- **Google Chrome** installed on your system
- **Bash shell** (for executing the script)

---

## Usage

### 1. **Make the script executable**

Before using the script, you need to make it executable. Run the following command:

```bash
chmod +x html-to-pdf.sh
```

### 2. **Run the script**

Once the script is executable, you can run it with the following command:

```bash
./html-to-pdf.sh output.pdf index.html
```

This will:
- Take the HTML file `index.html` and convert it into a PDF file `output.pdf`.

### 3. **Add an alias (Optional)**

To make the script easier to run, you can add an alias for it to your shell configuration file (e.g., `.bashrc` or `.zshrc`).

1. Open your shell configuration file (e.g., `.bashrc`):

   ```bash
   nano ~/.bashrc
   ```

2. Add the following line at the end of the file:

   ```bash
   alias html-to-pdf='/path/to/html-to-pdf.sh'
   ```

   Replace `/path/to/` with the actual path to the script.

3. Reload the shell configuration:

   ```bash
   source ~/.bashrc
   ```

Now you can run the script with the `html-to-pdf` command like so:

```bash
html-to-pdf output.pdf index.html
```

---

## Parameters

The script takes two parameters:

1. **PDF file** (`$pdf`): The path where the PDF will be saved. It must have a `.pdf` extension. 
   Example: `output.pdf`.

2. **HTML file** (`$html`): The path to the HTML file to be converted. It must have a `.html` extension. 
   Example: `index.html`.

### Example Command:

```bash
./html-to-pdf.sh myoutput.pdf myfile.html
```

This command will generate a PDF named `myoutput.pdf` from the `myfile.html` file.

---

## Script Overview

The script performs the following:

1. Validates that both parameters are in the correct format (i.e., `.pdf` for the first parameter and `.html` for the second).
2. Runs the Chrome headless command to convert the HTML file to a PDF.
3. Saves the PDF at the location specified by the first parameter.

---

## Troubleshooting

1. **Error: Chrome not found**
   - Make sure Chrome is installed and available in your system's PATH. You can check by running `chrome --version`.

2. **Error: Invalid file extension**
   - Ensure that the file paths end with `.pdf` and `.html` respectively.
```
