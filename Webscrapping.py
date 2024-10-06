from bs4 import BeautifulSoup
import requests
import pandas as pd

url = "https://www.otomoto.pl/osobowe"
page = requests.get(url)

soup = BeautifulSoup(page.content, "html.parser")
lists = soup.find_all('article', "ooa-nvh3yw e1b25f6f18")
titleList = []
locationList = []
priceList = []
yearList = []

for element in lists:
    title = element.find('h2', "e1b25f6f12 ooa-1mgjl0z-Text eu5v0x0").get_text()
    location = element.find('span', "ooa-1rwfs5y").get_text()
    price = element.find('span', "ooa-epvm6 e1b25f6f7").get_text()
    year = element.find('li', "ooa-qhdd6a e1teo0cs0").get_text()
    titleList.append(title)
    locationList.append(location)
    priceList.append(price)
    yearList.append(year)

DataFromPage = pd.DataFrame(list(zip(titleList, locationList, priceList, yearList)),
                            columns=['Title', 'Location', 'Price', 'Year'])
Data = DataFromPage.to_excel("C:/Python/scrapping/Auta.xlsx", index=False,
                             encoding="utf-8", sheet_name='Arkusz1')