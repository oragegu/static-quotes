import os
import json

# Load the quotes data
with open("quotes.json", "r") as json_file:
    quotes = json.load(json_file)

# Paths
template_file = "quote-template.html"
output_dir = "."

# Read the template file
with open(template_file, "r") as file:
    template = file.read()

# Create output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

# Generate HTML files for each quote
for quote in quotes:
    html_content = (
        template.replace("{{quote}}", quote["quote"])
        .replace("{{image}}", quote["image"])
        .replace("{{title}}", "Quote " + str(quote["id"]))
        .replace("{{description}}", quote["quote"])
    )

    output_html_file = os.path.join(output_dir, f'{quote["id"]}.html')

    with open(output_html_file, "w") as file:
        file.write(html_content)

    print(f"Generated {output_html_file}")

print(f"Done")
