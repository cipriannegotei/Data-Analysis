import requests
    #The library used to print the dictionary more organised -- pprint

class Weather:
    """
    Creates a weather object getting an apikey as input and
    either a city name or latitude and longitude coordinates.

    Package use example:

     Create a weather object using a city name:
    - The api key below is not guaranteed to work.
    - Get your own key from https://openweathermap.org/
     weather1 = Weather(apikey="b55c2adf2f032d9fc7e8bfcba6dd01b9", city=Madrid")

     Create a weather object using lat and lon coordinates
     weather2 = Weather(apikey = "b55c2adf2f032d9fc7e8bfcba6dd01b9", lat=41.1, lon=-4.1)

     Get the complete data for the next 12 hours
     weather1.next_12h()

     Get the simplified data for the next 12 hours
     weather2.next_12h_simplified

    """
    def __init__(self, apikey, city=None, lat=None, lon=None):

        if city:
            url = f"http://api.openweathermap.org/data/2.5/forecast?q={city}&appid={apikey}&units=metric"
            r = requests.get(url)
            self.data = r.json()
        elif lat and lon:
            url = f"http://api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&appid={apikey}&units=metric"
            r = requests.get(url)
            self.data = r.json()
        else:
            raise TypeError("Please provide either a city or latitude and longitude arguments!")

        if self.data['cod'] != "200":
            raise ValueError(self.data['message'])

    def next_12h(self):
        #Returns 3 hour data for the next 5 days as a dictionary
        return self.data #if you want the data without the cityname and the other details regarding the city
                         #[:4] less data, for this example 12 hours

    def next_12h_simplified(self):
        #Returns date, temperature and the sky condition every 3 hours for the next 12 hours a tuple of tuples
        data = []
        for i in self.data['list'][:4]:
            data.append((i['dt_txt'], i['main']['temp'], i['weather'][0]['description']))
        return data

#Commenting the print functions and variables assigned
#weather = Weather(apikey="b55c2adf2f032d9fc7e8bfcba6dd01b9", lat=4.1, lon=4.5)
#print(weather.data)
#pprint.pprint(weather.next_12h())