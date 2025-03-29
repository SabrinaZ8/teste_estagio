import requests as rq
from bs4 import BeautifulSoup
import zipfile
from urllib.parse import urljoin
import os

url = "https://www.gov.br/ans/pt-br/acesso-a-informacao/participacao-da-sociedade/atualizacao-do-rol-de-procedimentos"

resposta = rq.get(url)
print(resposta)

if resposta.status_code == 200:
    soup = BeautifulSoup(resposta.text, 'html.parser')
    pdf_links = [a['href'] for a in soup.find_all('a', href=True) if a['href'].endswith('.pdf') and "anexo" in a["href"].lower()]
    for link in pdf_links:
        pdf_resposta = rq.get(link)
        
        if pdf_resposta.status_code == 200:
            filename = link.split('/')[-1]
            with open(filename, 'wb') as pdf_file:
                pdf_file.write(pdf_resposta.content)

            with zipfile.ZipFile('pdf_files.zip', 'a') as zipf:
                zipf.write(filename)

            if os.path.exists(filename):
                os.remove(filename)

        else:
            print(f"Falha ao baixar{link}. Status: {pdf_resposta.status_code}")
    
else:
    print(f"Falha ao conectar. Status: {resposta.status_code}")

    