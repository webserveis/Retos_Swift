/*
 * Reto #37
 * LOS LANZAMIENTOS DE "THE LEGEND OF ZELDA"
 * Fecha publicación enunciado: 14/09/22
 * Fecha publicación resolución: 19/09/22
 * Dificultad: MEDIA
 *
 * Enunciado: ¡Han anunciado un nuevo "The Legend of Zelda"! Se llamará "Tears of the Kingdom"
 * y se lanzará el 12 de mayo de 2023.
 * Pero, ¿recuerdas cuánto tiempo ha pasado entre los distintos "The Legend of Zelda" de la historia?
 * Crea un programa que calcule cuántos años y días hay entre 2 juegos de Zelda que tú selecciones.
 * - Debes buscar cada uno de los títulos y su día de lanzamiento (si no encuentras el día exacto
 *   puedes usar el mes, o incluso inventártelo)
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal"
 *   para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en
 *   https://retosdeprogramacion.com/semanales2022.
 *
 */

import Foundation

let dateStr = "03/03/2017"
let dateStr2 = "12/05/2023"

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd/MM/yy"

let dateOne = dateFormatter.date(from: dateStr)
let dateTwo = dateFormatter.date(from: dateStr2)

 // get the current date and time
//let currentDateTime = Date()
// initialize the date formatter and set the style
let formatter = DateFormatter()
formatter.timeStyle = .none
formatter.dateStyle = .long

// get the date time String from the date object
print(formatter.string(from: dateOne!)) 
print(formatter.string(from: dateTwo!)) 

let days = Calendar(identifier: .gregorian).numberOfDaysBetween(from: dateOne!, to: dateTwo!)
print("days beetween dates: \(days) days")


extension Calendar {
    func numberOfDaysBetween( from: Date, to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day!  // <1>
    }
}

//https://swiftfiddle.com/g2vmdqsopjhaddnsyjvgbxkuwu
