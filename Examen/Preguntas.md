# Requerimientos del examen

## Realizar los siguientes pasos:

### -----------------------

# 1. Configure autenticación LDAP


Un usuario llamado samwell con contraseña RoboC0p ha sido configurado en el servidor LDAP de la siguiente manera:

````
 * La direccion del servidor LDAP es ldaps://idm.domainxx.example.com/cn=users,cn=accounts,dc=domainxx,dc=example,dc=com?uid
 * El usuario LDAP para vincular en este servidor es el uid=admin,cn=users,cn=accounts,dc=domainxx,dc=example,dc=com
 * La contraseña del administrador del servidor LDAP es Sestiver14
 * El certificado de CA para el servidor LDAP esta localizado en https://idm.domainxx.example.com/ipa/config/ca.crt
````
Siendo así, configure su clúster de tal manera que samwell tenga acceso de cluster-admin y los siguientes requerimientos son verdaderos:

````
✓ Autenticacion para el usuario samwell es proveida por el servidor LDAP
✓ La contraseña del administrador del servidor LDAP está guardada como un Secret llamado idm-secret
✓ El certificado de CA para el servidor CA esta guardado en un ConfigMap llamado idm-ca-configmap
````
Usted puede usar una plantilla que existe en /home/opsadm/ocp-auth. Una vez que la autenticación y la autorización sea configurada, el usuario samwell es capaz de ejecutar el siguiente comando:

````
curl -sk --header "Authorization: Bearer #TOKEN#" -X GET https://oauth-openshift.apps.domainxx.example.com:6443/api/v1/pods |jq -r 'items[].metadata.name'
````

TOKEN: es igual al token del usuario que se genera al hacer login por la consola
En caso de ser necesario los archivos para esta tarea pueden ser bajados asi:

````
wget http://domainxx.example.com/template/ocp-auth/ldap-cr.yml 
````

# 2. Despliegue una aplicación usando Ansible

El directorio /home/opsadm/ansible-code contiene:
````
✔︎ object-play-2048-*.yaml
````
Objetos de OpenShift, necesarios para desplegar la aplicación.
````
✔︎ deploy-play-2048.yaml
````
Playbook de Ansible con tareas que necesita implementar

Complete las tareas solicitadas en el *playbook* y después use el *playbook*  para desplegar la aplicación.
Cuando haya copletado todas las tareas solicitadas correctamente, la aplicación estara disponible en: (http:play-2048-dapibus.apps.domainxx.example.com) 
En caso de requerirse puede descargar los archivos así:

````
wget http://domainxx.example.com/template/ansible-code/deploy-play-2048.yaml
wget http://domainxx.example.com/template/ansible-code/deploy-play-2048-Deployment.yaml
wget http://domainxx.example.com/template/ansible-code/deploy-play-2048-Route.yaml
wget http://domainxx.example.com/template/ansible-code/deploy-play-2048-ServiceAccount.yaml
wget http://domainxx.example.com/template/ansible-code/deploy-play-2048-Service.yaml
````
# 3. Configure Alertmanager

Configure Alertmanager modificando /home/opsadm/alertmanager/alertmanager.yaml con los siguientes requerimientos:

````
✔︎ El nombre del servidor SMTP es: mail.domainxx.example.com
✔︎ El servidor SMTP escucha en el puerto 25/TCP
✔︎ El servidor SMTP no usa autenticación
✔︎ El servidor SMTP no usa TLS
✔︎ La dirección del remitente es: alerts-from-ocp@domainxx.example.com
✔︎ Hay un destinatario llamado email-notification con direccion de correo ocp-alert@domainxx.example.com
✔︎ Existe una ruta que coincide con alertname: "Watchdog" usando el remitente por omisión (default)
✔︎ Existe una ruta que coincide con severity: "critical" usando el remitente email-notification
````
Se puede utilizar el comando mailx con el usuario opsadm en el equipo workbench para verificar las alertas de mensajes.
Se pueden bajar los archivos asi:

````
wget http://domainxx.example.com/template/alertmanager/alertmanager.yaml
````

