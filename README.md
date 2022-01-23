# WasaPupkin_infra
WasaPupkin Infra repository


# Задание №5
Подключение к someinternalhost в одну команду
`ssh -i ~/.ssh/otus/appuser appuser@10.128.0.7 -A -J appuser@62.84.119.242`


Для возможности подключение вида `ssh someinternalhost` выполнить:
```
echo 'Host bastion
        HostName 62.84.119.242
        User appuser
        IdentityFile=~/.ssh/otus/appuser

Host someinternalhost
        HostName 10.128.0.7
        User appuser
        ProxyJump bastion
' >> ~/.ssh/config
```

```
bastion_IP = 62.84.119.242
someinternalhost_IP = 10.128.0.7
```

# Задания №6

Созданы исполняемые файлы:
* install_ruby.sh
* install_mongodb.sh
* deploy.sh

Файлы закоммичены как исполняемые.

Дополнительное задание про startup script не выполнено.

Проверить созданное приложение можно по http://62.84.118.235:9292/

```
testapp_IP = 62.84.118.235
testapp_port = 9292
```
