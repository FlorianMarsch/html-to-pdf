pdf=$1
html=$2

# Validate that the PDF file ends with .pdf
if [[ ! "$pdf" =~ \.pdf$ ]]; then
  echo "Error: The first parameter must be a PDF file (ending with .pdf)."
  exit 1
fi

# Validate that the HTML file ends with .html
if [[ ! "$html" =~ \.html$ ]]; then
  echo "Error: The second parameter must be an HTML file (ending with .html)."
  exit 1
fi


alias chrome=\"/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome\"
chrome --headless --disable-gpu --virtual-time-budget=10000 --print-to-pdf="$pdf" "file://$(realpath "$html")"
