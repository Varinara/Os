#!/bin/bash

grep -r -h -E "^ACPI.*" /var/log/ > errors.log #(финальная версия)

#grep -E -r -h "^ACPI.*" /home/artyom/forlab2/ > errors.log(для тестов)


#grep -E -r -h "/.*/.*\.[[:alpha:]]" /home/artyom/lab2/errors.log(для /x/
#grep -E -r -h "/.*\.[[:alpha:]]" /home/artyom/lab2/errors.log(для /x)
grep -E -r -h " /[[:alnum:]]+/*[[:alnum:]]*\.[[:alpha:]]" /home/artyom/lab2/errors.log #(вроде как финальная версия)
