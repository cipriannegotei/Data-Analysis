class Bill:

    def __init__(self, amount, period):
        self.amount = amount
        self.period = period


class Mate:

    def __init__(self, name, days):
        self.name = name
        self.days = days

    def payment(self, bill, mate2):
        percent = self.days / (self.days + mate2.days)
        value = bill.amount * percent
        return value
