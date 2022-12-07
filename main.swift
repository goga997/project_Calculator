print("Welcome to the Calculator")
let operation = getInfo(description: "Introduceti semnul operatiunei: +, -, *, /")
let number1 = getInfo(description: "Alegeti primul numar")
let number2 = getInfo(description: "Alegeti al doilea numar")

print("Calculation... ->  " + number1 + " " + operation + " " + number2)

if let number1 = Int(number1) {
    if let number2 = Int(number2) {
         calculate(operation: operation, number1: number1, number2: number2)
    } else {
        print("Ati introdus gresit al doiela numar")
    }
    
} else {
    print("Ati introdus gresit primul numar")
}


func getInfo(description: String) -> String {
    print(description)
    return readLine() ?? ""
}

func showResult(_ result: Int) {
    let result = String(result)
    print("Rezultatul este " + result)
}

func calculate(operation: String, number1: Int, number2: Int) {
    switch operation {
    case "+": showResult(number1 + number2)
    case "-": showResult(number1 - number2)
    case "*": showResult(number1 * number2)
    case "/":  if number2 != 0 {
        showResult(number1 / number2)
    } else {
        print("Impartirea la 0 nu poate avea loc")
    }
    default: print("Ati introdus gresit semnul operatiunii")
    }
}

