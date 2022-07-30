#IaC modelo de provisionamento de servidor web
#!/bin/bash

echo "***_Atualizando o Servidor_***"
apt-get update
apt-get upgrade -y

echo "***_Instalando Servidor Apache_**"
apt-get install apache2 -y

echo "***_Instalando unzip_***"
apt-get install unzip -y

cd /tmp

echo "***_Baixando Repositorio_***"
wget https://github.com/marcosbarker/PAV-FAETERJ/archive/refs/heads/sus-agendamento.zip

echo "***_Descompactando Arquivos_***"
unzip sus-agendamento.zip

cd PAV-FAETERJ

echo "***_Copiando Arquivos Pagina Web Para Psata Padrao_***"
cp -R * /var/www/html/


echo "***_Script =^.^= Finalizado_***"

echo " \    /\  "
echo "  )  ( ') "
echo " (  /  )  "
echo "  \(__)|  "