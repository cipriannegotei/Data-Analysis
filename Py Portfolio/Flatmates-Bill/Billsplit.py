from Flat import Bill, Mate
from Reports import PDFReport




bill_value = float(input("Please enter the bill amount: "))
period = input("Please enter the period: ")
name1 = input("Please enter the first person name: ")
d1 = int(input(f"Please enter the number of days that {name1} stayed in the house: "))
name2 = input("Please enter the second person name: ")
d2 = int(input(f"Please enter the number of days that {name2} stayed in the house: "))

the_bill = Bill(bill_value, period)
mate1 = Mate(name1, d1)
mate2 = Mate(name2, d2)

print(f"{mate1.name} pays: ", mate1.payment(the_bill, mate2))
print(f"{mate2.name} pays: ", mate2.payment(the_bill, mate1))

pdf_report = PDFReport(filename=f"{the_bill.period}.pdf")
pdf_report.generate(mate1, mate2, the_bill)