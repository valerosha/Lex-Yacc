#Lex-Yacc

Описание запуска

Данный лексер был реализован на ОС ubuntu 14.04

<li>1-й вариант Добавлен скрипт для запуска bash.sh
<li>2-й вариант Для того чтобы запустить анализ текста в терминале необходимо выполнить, следующую последовательность действий:

Запустить терминал (Ctrl+Alt+t)
Заходим в кталог, где аходится файл exm_1.l
Вводим последовательно следующие команды:
Так как теперь возможны два варианта запуска лексера, в последнем (3-м) пункте возможны два варианта запуска.
<li>1) lex exm_1.l
<li>2) gcc lex.yy.c -lfl -o lexer
<li>3.1) ![alt text](https://cloud.githubusercontent.com/assets/13032857/20041328/5ee09d5a-a478-11e6-942c-0f06476bcca9.PNG)
<li>3.2)![alt text](https://cloud.githubusercontent.com/assets/13032857/20041329/5ee557d2-a478-11e6-8e7f-7d7290856c79.PNG)

Реализация:
Так как консольное приложение для лексера должно выводить лексемы на печать, но печатать должна быть отдельная процедура. Была создана процедура show (), которая выводит результат работы лексера.


Тесты

Тесты, которые проводились с реализованной программой, находятся в файле my_gram.l Файл с таким же расширением создала случайна, по инерции.

Форма отображения

Результат лексического анализа отображается ввиде ИмяТокена(Разн,НомСтр,Нач,Кон )

Разное- в данном поле для определенного токена , отображается определенная информация (из указан. к д.з.)
Стр- номер текущей строки
Нач и Кон - служат для точного определения токена

Результаты тестирования, которые я проводила находятся в файле my_gram.l
