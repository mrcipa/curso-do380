# Requerimientos del examen

## Realizar los siguientes pasos:

### -----------------------

# 1. Configure autenticación LDAP


Un usuario llamado samwell con contraseña RoboC0p ha sido configurado en el servidor LDAP de la siguiente manera:

>
 - [ ] La direccion del servidor LDAP es ldaps://idm.domainxx.example.com/cn=users,cn=accounts,dc=domainxx,dc=example,dc=com?uid
 - [ ] El usuario LDAP para vincular en este servidor es el uid=admin,cn=users,cn=accounts,dc=domainxx,dc=example,dc=com
 - [ ] La contraseña del administrador del servidor LDAP es Sestiver14
 - [ ] El certificado de CA para el servidor LDAP esta localizado en https://idm.domainxx.example.com/ipa/config/ca.crt
>

Siendo así, configure su clúster de tal manera que samwell tenga acceso de cluster-admin y los siguientes requerimientos son verdaderos:

>
- [ ] Autenticacion para el usuario samwell es proveida por el servidor LDAP
- [ ] La contraseña del administrador del servidor LDAP está guardada como un Secret llamado idm-secret
- [ ] El certificado de CA para el servidor CA esta guardado en un ConfigMap llamado idm-ca-configmap
>
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
>
- [ ] object-play-2048-*.yaml
>
Objetos de OpenShift, necesarios para desplegar la aplicación.
>
- [ ] deploy-play-2048.yaml
>
Playbook de Ansible con tareas que necesita implementar

Complete las tareas solicitadas en el *playbook* y después use el *playbook*  para desplegar la aplicación.
Cuando haya copletado todas las tareas solicitadas correctamente, la aplicación estara disponible en: (http:play-2048-dapibus.apps.domainxx.example.com) 

| :memo: Tome Nota |
|------------------|

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

>
- [ ] El nombre del servidor SMTP es: mail.domainxx.example.com
- [ ] El servidor SMTP escucha en el puerto 25/TCP
- [ ] El servidor SMTP no usa autenticación
- [ ] El servidor SMTP no usa TLS
- [ ] La dirección del remitente es: alerts-from-ocp@domainxx.example.com
- [ ] Hay un destinatario llamado email-notification con direccion de correo ocp-alert@domainxx.example.com
- [ ] Existe una ruta que coincide con alertname: "Watchdog" usando el remitente por omisión (default)
- [ ] Existe una ruta que coincide con severity: "critical" usando el remitente email-notification
>

Se puede utilizar el comando mailx con el usuario opsadm en el equipo workbench para verificar las alertas de mensajes.
Se pueden bajar los archivos asi:

````
wget http://domainxx.example.com/template/alertmanager/alertmanager.yaml
````

# 4. Cree un cron job

Cree un cron job usando la imagen ubicada en quay.domainxx.example.com/cron/job-runner:latest con los siguientes parámetros:

>
- [ ] El nombre de cron job debe ser el mismo que el nombre de la imagen
- [ ] El cron job debe ejecutarse en el siguiente periodo de tiempo: 04:05 en el segundo día de cada mes.
- [ ] El límite del tamaño del historial exitoso es 14
- [ ] El nombre usado en serviceAccount y serviceAccountName es magna
- [ ] El cron job corre en el proyecto llamado elementum
>

# 5. Migre una aplicación

El directorio /home/opsadm/assemble contiene objetos k8s de una aplicacion que fue exportada desde un clúster de Kubernetes y una imagen que fue usada para la aplicación.
Utilice estos artefactos para instalar la aplicacion en el cluster de OpenShift de acuerdo a los siguientes requerimientos:

- [ ] La imagen debe ser publicada como quay.domainxx.example.com/redhat-landing:latest
- [ ] La aplicacion usa la imagen quay.domainxx.example.com/redhat-landing:latest
- [ ] La aplicacion corre en los 3 pods
- [ ] La aplicacion enfatiza *disponibilidad* sobre *consistencia*
- [ ] Cada nueva actualización en la aplicación resulta en un nuevo despliegue
- [ ] La aplicación esta disponible en http://redhat-landing-egestas.apps.domainxx.example.com
- [ ] La aplicación escucha en el puerto 8080
- [ ] El *svc* usa el puerto 8080 únicamente

| :memo: Tome Nota |
|------------------|

En caso de ser necesario, los archivos en /home/opsadm para esta tarea puede descargarlos de nuevo así:

````
wget http://domainxx.example.com/template/assemble/migration.yaml
wget http://domainxx.example.com/template/assemble/redhat-landing.tar.gz
````

# 6. Configure NTP

Use un *MachineConfig* para configurar el cliente de protocolo de tiempo de red (*NTP*) en todos los nodos del clúster con los siguientes requerimientos:

>
- [ ] El archivo de configuración del cliente NTP se encuentra en /home/opsadm/machineconfig/chrony.conf
- [ ] El archivo de configuración de nodos master es 60-master-ntpd-server
- [ ] El archivo de configuración de nodos worker es 60-worker-ntpd-server
- [ ] No es necesario crear nuevas etiquetas
- [ ] La ruta de configuracion del archivo del cliente es /etc/chrony.conf
- [ ] La versión de *ignition* es la misma de otros objetos *MachineConfig*
>

| :memo: Tome Nota |
|------------------|

En caso de necesitar los archivos en /home/opsadm/ para esta tarea, puede bajarlos así:

````
wget http://domainxx.example.com/template/machineconfig/chrony.conf
````

# 7. Instalando un operador

Instale el operador *file-integrity* donde se cumpla con lo siguiente:

>
- [ ] El operador es instalado en el proyecto *opendhift-file-integrity*
- [ ] El approval estrategy es *Automatic*
- [ ] El clúster monitoring es habilitado para el proyecto *openshift-file-integrity*
>

# 8. Configure una aplicación para utilizar almacenamiento NFS

Configure un *PersistentVolume* con los siguientes requerimientos:

>
- [ ] El nombre del *PersistentVolume* es *landing-pv*
- [ ] El modo de acceso es *ReadOnlyMany*
- [ ] La capacidad de almacenamiento es **1Gi**
- [ ] La política de recuperación (reclaim policy) y el modo de acceso se alinean con el objeto *StorageClass*
>

Configure en *PersistentVolumeClaim* con los siguientes requetimientos:
>
- [ ] El nombre del *PersistentVolumeClaim* es *landing-pvc*
- [ ] El modo de acceso del *PersistentVolumeClaim* es el mismo del *PersistentVolume*
- [ ] El tamaño del *PersistentVolumeClaim* es el mismo del *PersistentVolume*
>

Despliegue una aplicación con los siguientes requerimientos:
>
- [ ] La aplicación existe en un proyecto llamado *page*
- [ ] La aplicación usa un *Deployment* llamado *landing*
- [ ] La aplicación usa la imagen hosteada en quay.domainxx.example.com/nginxnc/nginx-unprivileged:latest
- [ ] El mountpoint del nginx es /usr/sharen/ginx/html
- [ ] La aplicación usa 3 pods
- [ ] La aplicación debe estar disponible en https://landing-page.apps.domainxx.example.com 
>

# 9. Despliegue y cofigure cluster logging

Despliegue y configure un servicio cluster logging desde los canales *stable* con los siguientes requisitos:

>
- [ ] Todo el cluster logging utiliza el espacio total del *StorageClass* llamado *localdisk-clusterlogging*
- [ ] Solamente esta configurado en los nodos con los labels *node.role.kubernetes.io/worker*
- [ ] La retención del Elasticsearch para *infra* es de 7d
- [ ] La política de redundancia del Elasticsearch es *MultipleRedundancy*
- [ ] El tamaño de la réplica de Kibana es 1
- [ ] El index pattern de Kibana se llama infra* y utiliza el campo @timestamp
>

|:warning: Nota importante|
|-------------------------|

Hay un template YAML como ejemplo en el path /home/opsadm/clusterlogging del directorio home    

# 10. Configure pod scheduling

Asegurese que el deployment del proyecto *catalog* se ejecute únicamente en el nodo worker2
Teniendo en cuenta que todo cambio debe ser persistente al reinicio de worker2