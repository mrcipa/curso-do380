TASK [Create te project called "dapibus"] *********************************************************************************************************************************
task path: /home/ansible/deploy-play-2048.yaml:18
<localhost> ESTABLISH SSH CONNECTION FOR USER: None
<localhost> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/8a5a4c6a60"' localhost '/bin/sh -c '"'"'echo ~ && sleep 0'"'"''
<localhost> (0, b'/root\n', b'')
<localhost> ESTABLISH SSH CONNECTION FOR USER: None
<localhost> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/8a5a4c6a60"' localhost '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /root/.ansible/tmp `"&& mkdir "` echo /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527 `" && echo ansible-tmp-1687923445.1650589-63154-256200713239527="` echo /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527 `" ) && sleep 0'"'"''
<localhost> (0, b'ansible-tmp-1687923445.1650589-63154-256200713239527=/root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527\n', b'')
Using module file /home/ansible/my_collections/ansible_collections/kubernetes/core/plugins/modules/k8s.py
<localhost> PUT /root/.ansible/tmp/ansible-local-62929mo3vgzht/tmpkxds8dk8 TO /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527/AnsiballZ_k8s.py
<localhost> SSH: EXEC sftp -b - -C -o ControlMaster=auto -o ControlPersist=60s -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/8a5a4c6a60"' '[localhost]'
<localhost> (0, b'sftp> put /root/.ansible/tmp/ansible-local-62929mo3vgzht/tmpkxds8dk8 /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527/AnsiballZ_k8s.py\n', b'')
<localhost> ESTABLISH SSH CONNECTION FOR USER: None
<localhost> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/8a5a4c6a60"' localhost '/bin/sh -c '"'"'chmod u+x /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527/ /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527/AnsiballZ_k8s.py && sleep 0'"'"''
<localhost> (0, b'', b'')
<localhost> ESTABLISH SSH CONNECTION FOR USER: None
<localhost> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/8a5a4c6a60"' -tt localhost '/bin/sh -c '"'"'/usr/bin/python3 /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527/AnsiballZ_k8s.py && sleep 0'"'"''
<localhost> (1, b'\r\n{"exception": "Traceback (most recent call last):\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py\\", line 153, in _create_configuration\\n    kubernetes.config.load_incluster_config()\\n  File \\"/usr/local/lib/python3.9/site-packages/kubernetes/config/incluster_config.py\\", line 118, in load_incluster_config\\n    InClusterConfigLoader(\\n  File \\"/usr/local/lib/python3.9/site-packages/kubernetes/config/incluster_config.py\\", line 54, in load_and_set\\n    self._load_config()\\n  File \\"/usr/local/lib/python3.9/site-packages/kubernetes/config/incluster_config.py\\", line 62, in _load_config\\n    raise ConfigException(\\"Service host/port is not set.\\")\\nkubernetes.config.config_exception.ConfigException: Service host/port is not set.\\n\\nDuring handling of the above exception, another exception occurred:\\n\\nTraceback (most recent call last):\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py\\", line 351, in get_api_client\\n    configuration = _create_configuration(auth_spec)\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py\\", line 158, in _create_configuration\\n    raise err\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py\\", line 156, in _create_configuration\\n    _load_config(auth)\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py\\", line 126, in _load_config\\n    kubernetes.config.load_kube_config(config_file=None, **optional_arg)\\n  File \\"/usr/local/lib/python3.9/site-packages/kubernetes/config/kube_config.py\\", line 813, in load_kube_config\\n    loader = _get_kube_config_loader(\\n  File \\"/usr/local/lib/python3.9/site-packages/kubernetes/config/kube_config.py\\", line 770, in _get_kube_config_loader\\n    raise ConfigException(\\nkubernetes.config.config_exception.ConfigException: Invalid kube-config file. No configuration found.\\n\\nThe above exception was the direct cause of the following exception:\\n\\nTraceback (most recent call last):\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/modules/k8s.py\\", line 473, in main\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/runner.py\\", line 52, in run_module\\n    client = get_api_client(module)\\n  File \\"/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py\\", line 356, in get_api_client\\n    raise CoreException(msg) from e\\nansible_collections.kubernetes.core.plugins.module_utils.k8s.exceptions.CoreException: Could not create API client: Invalid kube-config file. No configuration found.\\n", "failed": true, "msg": "Could not create API client: Invalid kube-config file. No configuration found.", "invocation": {"module_args": {"namespace": "", "name": "dapibus", "username": "gamepage", "ca_cert": "/etc/pki/tls/certs/ca-bundle.crt", "api_version": "project.kubernetes.io/v1", "kind": "Project", "state": "present", "wait": false, "wait_sleep": 5, "wait_timeout": 120, "append_hash": false, "apply": false, "continue_on_error": false, "force": false, "resource_definition": null, "src": null, "kubeconfig": null, "context": null, "host": null, "api_key": null, "password": null, "validate_certs": null, "client_cert": null, "client_key": null, "proxy": null, "no_proxy": null, "proxy_headers": null, "persist_config": null, "impersonate_user": null, "impersonate_groups": null, "wait_condition": null, "merge_type": null, "validate": null, "template": null, "delete_options": null, "label_selectors": null, "generate_name": null, "server_side_apply": null}}}\r\n', b'Shared connection to localhost closed.\r\n')
<localhost> Failed to connect to the host via ssh: Shared connection to localhost closed.
<localhost> ESTABLISH SSH CONNECTION FOR USER: None
<localhost> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/root/.ansible/cp/8a5a4c6a60"' localhost '/bin/sh -c '"'"'rm -f -r /root/.ansible/tmp/ansible-tmp-1687923445.1650589-63154-256200713239527/ > /dev/null 2>&1 && sleep 0'"'"''
<localhost> (0, b'', b'')
The full traceback is:
Traceback (most recent call last):
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py", line 153, in _create_configuration
    kubernetes.config.load_incluster_config()
  File "/usr/local/lib/python3.9/site-packages/kubernetes/config/incluster_config.py", line 118, in load_incluster_config
    InClusterConfigLoader(
  File "/usr/local/lib/python3.9/site-packages/kubernetes/config/incluster_config.py", line 54, in load_and_set
    self._load_config()
  File "/usr/local/lib/python3.9/site-packages/kubernetes/config/incluster_config.py", line 62, in _load_config
    raise ConfigException("Service host/port is not set.")
kubernetes.config.config_exception.ConfigException: Service host/port is not set.

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py", line 351, in get_api_client
    configuration = _create_configuration(auth_spec)
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py", line 158, in _create_configuration
    raise err
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py", line 156, in _create_configuration
    _load_config(auth)
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py", line 126, in _load_config
    kubernetes.config.load_kube_config(config_file=None, **optional_arg)
  File "/usr/local/lib/python3.9/site-packages/kubernetes/config/kube_config.py", line 813, in load_kube_config
    loader = _get_kube_config_loader(
  File "/usr/local/lib/python3.9/site-packages/kubernetes/config/kube_config.py", line 770, in _get_kube_config_loader
    raise ConfigException(
kubernetes.config.config_exception.ConfigException: Invalid kube-config file. No configuration found.

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/modules/k8s.py", line 473, in main
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/runner.py", line 52, in run_module
    client = get_api_client(module)
  File "/tmp/ansible_kubernetes.core.k8s_payload_q1oshco_/ansible_kubernetes.core.k8s_payload.zip/ansible_collections/kubernetes/core/plugins/module_utils/k8s/client.py", line 356, in get_api_client
    raise CoreException(msg) from e
ansible_collections.kubernetes.core.plugins.module_utils.k8s.exceptions.CoreException: Could not create API client: Invalid kube-config file. No configuration found.
fatal: [localhost]: FAILED! => {
    "changed": false,
    "invocation": {
        "module_args": {
            "api_key": null,
            "api_version": "project.kubernetes.io/v1",
            "append_hash": false,
            "apply": false,
            "ca_cert": "/etc/pki/tls/certs/ca-bundle.crt",
            "client_cert": null,
            "client_key": null,
            "context": null,
            "continue_on_error": false,
            "delete_options": null,
            "force": false,
            "generate_name": null,
            "host": null,
            "impersonate_groups": null,
            "impersonate_user": null,
            "kind": "Project",
            "kubeconfig": null,
            "label_selectors": null,
            "merge_type": null,
            "name": "dapibus",
            "namespace": "",
            "no_proxy": null,
            "password": null,
            "persist_config": null,
            "proxy": null,
            "proxy_headers": null,
            "resource_definition": null,
            "server_side_apply": null,
            "src": null,
            "state": "present",
            "template": null,
            "username": "gamepage",
            "validate": null,
            "validate_certs": null,
            "wait": false,
            "wait_condition": null,
            "wait_sleep": 5,
            "wait_timeout": 120
        }
    },
    "msg": "Could not create API client: Invalid kube-config file. No configuration found."
}

