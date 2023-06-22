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
