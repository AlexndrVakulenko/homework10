# homework10
ДЗ  "Инициализация системы. Systemd"
Работа выполнена на VM ubuntu 22.04 (Vagrantfile).

Задания выполнены на Ansible:
- Написать сервис, который будет раз в 30 секунд мониторить лог на предмет наличия ключевого слова. Файл и слово должны задаватся в /etc/sysconfig ---->
Ansible workbook unittest1.yml. Необходимые файлы копируются из папки watchlog текущей директории запуска Ansible workbook. Результат представлен на скриншоте 01.

- Установить spawn-fcgi и создать unit-файл etc/sysconfig ----> Ansible workbook unittest2.yml Необходимые файлы копируются из папки spawn_script. Пакеты php не устанавливались напрямую. Решилось добавлением репозитория. скриншот 02

- Доработать unit-файл Nginx (nginx.service) для запуска нескольких инстансов сервера с разными конфигурационными файлами одновременно ----> Ansible workbook unittest3.yml, папка two_nginx, скриншот 03
