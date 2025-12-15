# Elastic search:

Enlace a la documentación oficial:  
https://www.elastic.co/docs/deploy-manage/deploy/self-managed/install-elasticsearch-with-debian-package

Primero poner estos comandos en el CMD de linux:

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/9.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-9.x.list

sudo apt-get update && sudo apt-get install elasticsearch

Cuando termina de instalar el elasticSearch, en la salida que devuelve, nos pide que ejecutemos estos 2 comandos:

sudo systemctl daemon-reload  
sudo systemctl enable elasticsearch.service

Para iniciar el servicio:

sudo systemctl start elasticsearch.service


Después:

sudo systemctl restart elasticsearch.service para que nos muestre la información de equipo ponemos curl localhost:9200

<img width="507" height="265" alt="image" src="https://github.com/user-attachments/assets/f26edf9b-9e7d-4481-af2d-f639966f9e12" />


Para verlo desde el navegador poner:

http://localhost:9200/

<img width="504" height="342" alt="image" src="https://github.com/user-attachments/assets/0259f243-1400-466f-81f8-3420a14dab6d" />

El videos que he usado para la instalación de esta parte ha sido:

[Elasticsearch Installation: Step-by-Step Guide for Beginners](https://www.youtube.com/watch?v=zqjziVbOubI&ab_channel=CodersArts)

---

# KIBANA:

Enlace a la documentación oficial:  
https://www.elastic.co/docs/deploy-manage/deploy/self-managed/install-kibana-with-debian-package

Primero poner estos comandos:

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg
<img width="473" height="119" alt="image" src="https://github.com/user-attachments/assets/dff68594-c309-48b1-9ed6-cb5b75b9aab5" />

sudo apt-get install apt-transport-https

echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/9.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-9.x.list

sudo apt-get update && sudo apt-get install kibana

Editar el archivo ubicado en:

cd /etc/kibana/  
nano kibana.yml

Hay que descomentar esta linea  
<img width="245" height="47" alt="image" src="https://github.com/user-attachments/assets/bfeb5a43-4177-49ef-ac1f-6b5412e58a18" />

y poner esta otra línea de esta manera:
<img width="245" height="47" alt="image" src="https://github.com/user-attachments/assets/0726b608-e6f7-4893-bb00-7ad66cdcda2e" />


Luego hay que iniciar el proceso:

sudo systemctl restart kibana.service  
sudo systemctl start kibana.service

o

sudo systemctl restart kibana  
sudo systemctl start kibana

Por último acceder mediante el enlace:

http://localhost:5601
