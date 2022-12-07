import Darwin

func getInfo(info: String) -> String {
    print(info)
    return readLine() ?? ""
}

func showRes( _ result: Int) {
    print("Rezultatul este: " + String(result))
}

var history:[String] = []

print("welcome to the calculator")

while true {
    let operation = getInfo(info: "Introduceti semnul operatiunii // for exit press q // for history press h ")
    if operation == "q" {
        exit(0)
    } else if  operation == "h" {
        for exemple in history {
            print(exemple)
        }
        continue
    }
    let number1 = getInfo(info: "Introduceti primul numar")
    let number2 = getInfo(info: "Introduceti al doiela nuamar")
    
    let exemple = number1 + " " + operation + " " + number2
    print("calculare...  " + exemple  )
    
    if let nr1 = Int(number1) {
        if let nr2 = Int(number2) {
          let result = calc(nr1: nr1, nr2: nr2, operation: operation)
            if let result = result {
                showRes(result)
                history.append(exemple + " = " + String(result))
            }
            
        } else {
            print("gresit al doiela numar")
        }
    } else {
        print("gresit primul numar")
    }
    print("")
    print("_________________________________________________")
    print(" ")
}


func calc(nr1: Int, nr2: Int, operation: String) -> Int? {
    switch operation {
    case "+": return nr1 + nr2
    case "-": return nr1 - nr2
    case "*": return nr1 * nr2
    case "/":  if nr2 != 0 {
        return nr1 / nr2
    } else {
        print("impartirea a 0 nu poate exista")
        return nil
    }
    default: print("gresit semnul operatiunii")
        return nil
    }
}

