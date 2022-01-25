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

  http://62.84.117.66:9292/
