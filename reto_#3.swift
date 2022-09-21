/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

import Foundation

extension Int {
    func isPrime() -> Bool {
        return (1...self).filter({self % $0 == 0}).count <= 2
    }
}

print(1.isPrime())

for number in 1...100 {
  if (number.isPrime()) {
    print("\(number) prime")
  } else {
    print(number)
  }
}

//Test https://swiftfiddle.com/dj7kpekx5zdajeopklmcjdknd4
