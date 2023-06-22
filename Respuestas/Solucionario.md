# 1. Configure autenticación LDAP

>
- [ ] Lo primero que debe hacer es hacer login por la CLI de OpenShift con el usuario kubeadmin, el password de kubeadmin se encuentra en /home/opsadm/kubeadmin-password
- [ ] Ahora con la ayuda de la documentación que entregan en el examen, abrir la parte del documento que habla de *Authentication and Authorization* / **"7.3" Configuring an LDAP identity provider** en ese apartado esta el ejemplo de configuración del archivo YAML.
>

|:exclamation: Tip|
|-----------------|

>
Antes de comenzar a editar los archivos YAML cree un archivo .vimrc en el home del usuario e ingrese lo siguiente:

````
autocmd FileType yaml setlocal ai ts=2 sw=2 et
set cursorcolumn
set cursorline
````
Esto va a ser de utilidad durante el examen
>

- [ ] Ahora cree un secreto con el password del admin de LDAP que le proveen en el examen.

````
oc create secret generic idm-secret --from-literal=bindPassword=<password> -n openshift-config
````

- [ ] Descargue el certificado que indican y cree un configMap 

````
oc create configmap idm-ca-configmap --from-file=ca.crt=ca.crt -n openshift-config
````

- [ ] Modifique el archivo ldap-cr.yml con los valores que se encuentran en la descripcion
- [ ] Aplique la configuración

````
oc apply -f ldap-cr.yml
````
- [ ] Cierre sesión en la consola e ingrese con el usuario de LDAP. 

![Alt text](Images/image.png)

- [ ] Hecho esto, genere el token de acceso y copie únicamente la parte que dice token

````
sha256~UCyhgtedndsdfjdldgjk-_sfdskfslfjhskfj_hHthagT
````
- [ ] Asigne el rol de cluster-admin al usuario de LDAP

````
oc adm policy add-cluster-role-to-user cluster-admin samwell
````

- [ ] Ejecute el comando que solicitan en la pregunta:

````
curl -sk --header "Authorization: Bearer sha256~UCyhgtedndsdfjdldgjk-_sfdskfslfjhskfj_hHthagT" -X GET https://oauth-openshift.apps.domainxx.example.com:6443/api/v1/pods |jq -r 'items[].metadata.name'
````

# 6. Configure NTP

Revisar la siguiente URL:
https://patriciocerda.com/?p=1434 

# 8. Configure una aplicación para utilizar almacenamiento NFS

Observe el video a continuación:

[![Alt text](https://img.youtube.com/vi/DHO2lEZoRac/0.jpg)](https://www.youtube.com/watch?v=DHO2lEZoRac)
