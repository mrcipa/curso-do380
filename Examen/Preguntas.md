#Requerimientos del examen
**Realizar los siguientes pasos:

1. Configure autenticación LDAP
````
Un usuario llamado samwell con contraseña RoboC0p ha sido configurado en el servidor LDAP de la siguiente manera:
 - La direccion del servidor LDAP es ldaps://idm.domainxx.example.com/cn=users,cn=accounts,dc=domainxx,dc=example,dc=com?uid
 - El usuario LDAP para vincular en este servidor es el uid=admin,cn=users,cn=accounts,dc=domainxx,dc=example,dc=com
 - La contraseña del administrador del servidor LDAP es Sestiver14
 - El certificado de CA para el servidor LDAP esta localizado en https://idm.domainxx.example.com/ipa/config/ca.crt
````
Siendo así, configure su clúster de tal manera que samwell tenga acceso de cluster-admin y los siguientes requerimientos son verdaderos:

````
✓ Autenticacion para el usuario samwell es proveida por el servidor LDAP
✓ La contraseña del administrador del servidor LDAP está guardada como un Secret llamado idm-secret
✓ El certificado de CA para el servidor CA esta guardado en un ConfigMap llamado idm-ca-configmap
````
Usted puede usar una plantilla que existe en /home/opsadm/ocp-auth. Una vez que la autenticación y la autorización sea configuradael usuario samwell es capaz de ejecutar el siguiente comando:

````
curl -sk --header "Authorization: Bearer #TOKEN#" -X GET https://oauth-openshift.apps.domainxx.example.com:6443/api/v1/pods |jq -r 'items[].metadata.name'
````

TOKEN: es igual al token del usuario que se genera al hacer login por la consola
En caso de ser necesario los archivos para esta tarea pueden ser bajados asi:

````
wget http://domainxx.example.com/template/ocp-auth/ldap-cr.yml 
````
