# MaltParserPython
MaltParser для русского языка на Python

Данная реализация использует [mp4ru](https://github.com/oxaoo/mp4ru) 

## Как пользоваться?

Для начала надо перейти по [ссылке](https://github.com/oxaoo/mp4ru/blob/master/README_ru.md) и установить по инструкции mp4ru как приложение.
Также можно запустить скрипт `MaltParserInitialization.sh` в рабочей директории если у вас Debian-like система.

Затем скачать класс `MaltParser.py` и импортировать его в своем рабочем файле. Данная реализация работает следующим образом:
```
Parser = MaltParser.Parser(path)
```
Где `path` - рабочая директория, куда вы склонировали каталог или где запустили скрипт.
```
Parser.parse(filename)
```
Обрабатывает файл с именем `filename` относительно директории `path`, возвращает Pandas DataFrame содержащий парсинг. 
