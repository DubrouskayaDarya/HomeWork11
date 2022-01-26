import UIKit
import Foundation

// Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.

let newArray: [Any] = [3.33, 8.7, false, 10, 15, "Mike", 7.6, "Top", true]
print(newArray)

// Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.

for item in newArray {
    if item is Int {
        print("\(item) - Целое число")
    } else if item is String {
        print("\(item) - Строка")
    } else if item is Double {
        print("\(item) - Вещественное число")
    } else {
        print("\(item) - Булево значение")
    }
}

// Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите крассиво на консоль пары ключ/значения для всех элементов коллекции.

var myDictionary: [String: Any] = ["Name": "Mike", "Age": 37, "City": "Minsk", "Work years": 4.6, "isWomen": false, "isMan": true]

// первый вариант вывода на консоль
for item in myDictionary {
    print("\(item)")
}

// второй вариант вывода на консоль
print("\(myDictionary as AnyObject)")

// третий вариант вывода на консоль - лучший вариант
myDictionary.forEach {
    print("\($0): \($1)")
}


// Создайте переменную total типа Double, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно true, либо вычтите 3, если оно false.  Напечатайте значение total.

var total: Double = 0

print(myDictionary)

for (_, value) in myDictionary {
    switch value {
    case let value as Int:
        total += Double(value)
        print("\(total)")
    case is String:
        total += 1
        print("\(total)")
    case let value as Double:
        total += value
        print("\(total)")
    case let value as Bool where value == true:
        total += 2
        print("\(total)")
    default:
        total -= 3
        print("\(total)")
    }
}
print("Новое", total)

// Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.

total = 0
myDictionary["Work years"] = "12"
print(myDictionary)

for (_, value) in myDictionary {
    switch value {
    case let value as Int:
        total += Double(value)
        print("\(total)")
    case let value as Double:
        total += value
        print("\(total)")
    case let value as String:
        if let value = Double(value) {
            total += value
            print("\(total)")
        }
    default:
        print("\(total)")
    }
}

print("Обновленное", total)

