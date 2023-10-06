from fpdf import FPDF
import webbrowser
import os

class PDFReport:

    def __init__(self, filename):
        self.filename = filename

    def generate(self, mate1, mate2, bill):

        payment1 = str(round(mate1.payment(bill, mate2),2))
        payment2 = str(round(mate2.payment(bill, mate1),2))

        pdf = FPDF('P', 'pt', 'A4')
        pdf.add_page()

        #Insert image
        pdf.image("files//house.png", w=30, h=30)

        # Add the title
        pdf.set_font(family='Times', size=24, style='B')
        pdf.cell(w=0, h=80, txt="Mates Bill", border=0, align="C", ln=1)

        #Insert period value
        pdf.set_font("Times", size=14, style='B')
        pdf.cell(w=100, h=40, txt="Period", border=0)
        pdf.cell(w=150, h=40, txt=bill.period, border=0, ln=1)

        #Insert first mate value
        pdf.set_font("Times", size=12)
        pdf.cell(w=100, h=25, txt=mate1.name, border=0)
        pdf.cell(w=150, h=25, txt=payment1, border=0, ln=1)

        #Insert second mate value
        pdf.cell(w=100, h=25, txt=mate2.name, border=0)
        pdf.cell(w=150, h=25, txt=payment2, border=0, ln=1)

        #Change the directory of the files, generate and open the PDF file
        os.chdir("files")
        pdf.output(self.filename)
        webbrowser.open(self.filename)
