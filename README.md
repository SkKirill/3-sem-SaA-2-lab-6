### Скоморохов Кирилл | 8 (900) 988-75-37 | Т-Банк | tg = @sk_kiriII  | vk = sk_kirill | Delphi7 | Pascal

> **Стоимость - 600₽**

# Задача 6

Напечатать строки файла в обратном порядке.

# Как использовать модуль:
  
### Папка `UnitStack`
- Хранит в себе модуль для работы со стеком `Stack.pas`

### Папка `Solution`
- Хранит консольное приложение с решением задания.

1. Запускаем консольное приложение `Laba2.dpr`
2. Нажать кнопку билда (зеленый треугольник `Run`)
> [!CAUTION]
> В папке `Test` скопирован `Stack.dcu` из папки `UnitStack` — это наша библиотечка с методами для работы со стеком. При переносе консольного приложения
> нужно проверять, что `Stack.dcu` находиться в тойже папке, только в этом случае мы можем использовать этот модуль.

> [!TIP]
> Чтобы не перемещать эту библиотеку, чтобы она была встроенна в делфи ее(`Stack.dcu`) требуется переместить
> в `C:\Program Files (x86)\Borland\Delphi7\Lib`, после этого библиотека будет доступно из любого места при использовании `Delphi7`

# Пример
Так выглядит файл до обработки:
```PowerShell
11111111111111111111111
22222222222222222222222
33333333333333333333333
44444444444444444444444
55555555555555555555555
```

А так выглядит консольный вывод после обработки:
```PowerShell
55555555555555555555555
44444444444444444444444
33333333333333333333333
22222222222222222222222
11111111111111111111111
```