import Darwin

print("WELCOME to the G_Calculator")
var history:[String] = []


while true {
    
    let action = getInfo(info: "Choose action:\nCalculate -> C\nExit -> Q\nHistory -> H")
    switch action {
    case "c": calculate()
    case "q": exit (0)
    case "h": History()
    default: print("This type of action is unavailable")
    }
    
    print("-----------------------------")
}
    

func getInfo(info: String) -> String {
    print(info)
    return readLine() ?? ""
}

func calculate() {
    let operation = getInfo(info: "Chose operation signe: +, -, /, *")
    guard operation == "+" || operation == "-" || operation == "*" || operation == "/" else {
        return
    }
    
    let number1 = getInfo(info: "Enter first number")
    guard let number1 = Int(number1) else {
        print("Failed (first number)")
        return
    }
    
    let number2 = getInfo(info: "Enter second number")
    guard let number2 = Int(number2) else {
        print("Failed (second number")
        return
    }
    
    let half = String(number1) + " " + operation + " " + String(number2)
    print("Calculation:  " + half)
    
    let result = calculate(number1: number1, number2: number2, operation: operation)
    guard let result = result else { return }
    showRes(result)
    history.append(half + " = " + String(result))
}


func calculate(number1 first: Int, number2 second: Int, operation: String) -> Int? {
    switch operation {
    case "+":  return first + second
    case "-": return first - second
    case "*": return first * second
    case "/" where second == 0:
        print("Impossible with 0")
        return nil
    case "/": return first / second
    default: print("You choose wrong signe of operation")
        return nil
    }
}

func showRes(_ result: Int) {
    print("Result is  " + String(result))
}

func History() {
    for half in history {
        print(half)
    }
}
