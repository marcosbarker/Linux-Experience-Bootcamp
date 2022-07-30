#IaC modelo para criar Usuários, Grupos, Permissões e atribuir Usuários aos Grupos.
#!/bin/bash

echo "***_Criando os diretorios_***"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "***_Criando Grupos de Usuarios_***"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "***_Criando Usuarios e atibuindo Grupos_***"
useradd marcos_barker -c "Marcos Paulo" -s /bin/bash -m -p $(openssl passwd -crypt MinhaSenha123) -G GRP_ADM
useradd ana -c "Ana Carolina" -s /bin/bash -m -p $(openssl passwd -crypt MinhaSenha123) -G GRP_ADM
useradd joaquim -c "Joaquim"  -s /bin/bash -m -p $(openssl passwd -crypt MinhaSenha123) -G GRP_VEN
useradd paula -c "Ana Paula"  -s /bin/bash -m -p $(openssl passwd -crypt MinhaSenha123) -G GRP_VEN
useradd marlene -c "Marlene"  -s /bin/bash -m -p $(openssl passwd -crypt MinhaSenha123) -G GRP_SEC
useradd jessica -c "Marlene" -s /bin/bash -m -p $(openssl passwd -crypt MinhaSenha123) -G GRP_SEC

echo "***_Atribuindo permissoes aos diretorios_***"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "***_Script =^.^= Finalizado_***"

echo " \    /\  "
echo "  )  ( ') "
echo " (  /  )  "
echo "  \(__)|  "