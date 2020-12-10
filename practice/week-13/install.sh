wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

sudo apt-get update
sudo apt-get install nginx openjdk-8-jdk elasticsearch kibana logstash -y

sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
sudo systemctl start kibana
sudo systemctl enable kibana

sudo cp kibana.conf /etc/nginx/sites-available/
sudo cp elasticsearch.conf /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/kibana.conf /etc/nginx/sites-enabled/kibana.conf
sudo ln -s /etc/nginx/sites-available/elasticsearch.conf /etc/nginx/sites-enabled/elasticsearch.conf

sudo service nginx restart
sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-nori
sudo systemctl restart elasticsearch

sudo chown -R logstash.logstash /usr/share/logstash
sudo chmod 777 /usr/share/logstash/data