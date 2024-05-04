from flask import Flask, render_template
import pdfkit

app = Flask(__name__)

@app.route('/')
def index():
    # Render your Flask template
    rendered_html = render_template('your_template.html')
    
    # Convert HTML to PDF
    pdf = pdfkit.from_string(rendered_html, False)
    
    # Save the PDF to a file
    pdf_file_path = 'output.pdf'
    with open(pdf_file_path, 'wb') as f:
        f.write(pdf)
    
    return f'PDF saved to: {pdf_file_path}'

if __name__ == '__main__':
    app.run(debug=True)
