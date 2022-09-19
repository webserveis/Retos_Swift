import Foundation

extension String {
  var date : Date? {
    let df = DateFormatter()
    df.dateFormat = "dd/MM/yy"
    return df.date(from: self)
  }

}

let date1 = "03/03/2017".date ?? Date()
let date2 = "12/05/2023".date ?? Date()

let com = Calendar.current.dateComponents([.year, .day], from: date1, to: date2)
print("\(com.year ?? 0) years and \(com.day ?? 0) days")

// Output
//6 years 70 days

//test: https://swiftfiddle.com/6sjdcpqggrcgfjmiw6mazlyp7y
