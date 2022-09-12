import Foundation

/*
 * Reto #2
 * LA SUCESIÓN DE FIBONACCI
 * Fecha publicación enunciado: 10/01/22
 * Fecha publicación resolución: 17/01/22
 * Dificultad: DIFÍCIL
 *
 * Enunciado: Escribe un programa que imprima los 50 primeros números de la sucesión de Fibonacci empezando en 0.
 * La serie Fibonacci se compone por una sucesión de números en la que el siguiente siempre es la suma de los dos anteriores.
 * 0, 1, 1, 2, 3, 5, 8, 13...
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


func fibonacci(_ n: Int) -> Int {

    var num1 = 0
    var num2 = 1

    for _ in 0 ..< n {
    
        let fib = num1 + num2
        num1 = num2
        num2 = fib
    }
    
    return num2
}

let sequence = Array(0...50)
sequence.forEach { print(fibonacci($0)) } // 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55

//Test https://swiftfiddle.com/4if2fhv32rgd7numgeep5ba4uu
