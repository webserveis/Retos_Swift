/*
 * Enunciado: Crea un programa se encargue de transformar un número binario
 * a decimal sin utilizar funciones propias del lenguaje que 
 * lo hagan directamente.
 */

import Foundation

extension String {
    func asBinary() -> Int? {
        var result: Int = 0

        for digit in self {
            switch(digit) {
                case "0": result = result * 2
                case "1": result = result * 2 + 1
                default: return nil
            }
        }
        return result
    }
}

print("10101011".asBinary()!)

//Test https://swiftfiddle.com/pjuy3uborvbspfxceno2cxpsou
