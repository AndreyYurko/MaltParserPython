# MaltParserPython
MaltParser для русского языка на Python

Данная реализация использует [mp4ru](https://github.com/oxaoo/mp4ru) 

## Как пользоваться?

Для начала надо перейти по [ссылке](https://github.com/oxaoo/mp4ru/blob/master/README_ru.md) и установить по инструкции mp4ru как приложение.

Затем скачать класс `MaltParser.py` и импортировать его в своем рабочем файле. Данная реализация работает следующим образом:
```
Parser = MaltParser.Parser(path)
```
Создает парсер, находящийся в директории `path`.
```
Parser.parse(filename)
```
Обрабатывает файл с именем `filename` относительно директории `path`, возвращает Pandas DataFrame содержащий парсинг. 
