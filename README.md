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

# Задание №7

В каталог packer добавлены файлы:
* ubuntu16.json - шаблон
* variables.json.examples - образец файла с переменными

Ключ от API расположил все каталога проекта. В переменные пришлось вынести subnet_id, что бы yc cli создавал VM.
В качестве дополнительных опций использовано указание кол-ва ядер и ОЗУ для builder,
а так pause_before и max_retries для provisioners что бы успешно выполнять пользовательские скрипты по настройке VM.

# Задание №8

Установлен terraform v0.12.26, а НЕ 1.1.4.
Обновлен .gitignore.

В каталог terraform добавлены файлы:
* скрипты развертывания проекта
* 1. files/deploy.sh
* 2. files/puma.service
* main.tf
* создан файл с описанием переменных variables.tf
* создан файл со значениями для переменных terraform.tfvars
* в файле outputs.tf описаны переменные для вывода в STDOUT
* запущен скрипт
* проверено развернутое приложение по внешнему адресу
