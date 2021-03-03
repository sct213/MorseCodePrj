//
//  main.swift
//  MorseCodeAlphabetReadLine
//
//  Created by 양원석 on 2021/02/12.
//

import Foundation

enum MorseCodeAlphabet: String {
    case A = ".-"
    case B = "-..."
    case C = "-.-."
    case D = "-.."
    case E = "."
    case F = "..-."
    case G = "--."
    case H = "...."
    case I = ".."
    case J = ".---"
    case K = "-.-"
    case L = ".-.."
    case N = "-."
    case M = "--"
    case O = "---"
    case P = ".--."
    case Q = "--.-"
    case R = ".-."
    case S = "..."
    case T = "-"
    case U = "..-"
    case V = "...-"
    case W = ".--"
    case X = "-..-"
    case Y = "-.--"
    case Z = "--.."
}

enum MorseCodeNumber: String {
    case one = ".----"
    case two = "..---"
    case three = "...--"
    case four = "....-"
    case five = "....."
    case six = "-...."
    case seven = "--..."
    case eight = "---.."
    case nine = "----."
    case zero = "-.-"
}

func morse(_ input: String) -> String {

    switch input {
        case MorseCodeAlphabet.A.rawValue:
            return "A"
        case MorseCodeAlphabet.B.rawValue:
            return"B"
        case MorseCodeAlphabet.C.rawValue:
            return"C"
        case MorseCodeAlphabet.D.rawValue:
            return"D"
        case MorseCodeAlphabet.E.rawValue:
            return"E"
        case MorseCodeAlphabet.F.rawValue:
            return"F"
        case MorseCodeAlphabet.G.rawValue:
            return"G"
        case MorseCodeAlphabet.H.rawValue:
            return"H"
        case MorseCodeAlphabet.I.rawValue:
            return"I"
        case MorseCodeAlphabet.J.rawValue:
            return"J"
        case MorseCodeAlphabet.K.rawValue:
            return"K"
        case MorseCodeAlphabet.L.rawValue:
            return"L"
        case MorseCodeAlphabet.N.rawValue:
            return"N"
        case MorseCodeAlphabet.M.rawValue:
            return"M"
        case MorseCodeAlphabet.O.rawValue:
            return"O"
        case MorseCodeAlphabet.P.rawValue:
            return"P"
        case MorseCodeAlphabet.Q.rawValue:
            return"Q"
        case MorseCodeAlphabet.R.rawValue:
            return"R"
        case MorseCodeAlphabet.S.rawValue:
            return"S"
        case MorseCodeAlphabet.T.rawValue:
            return"T"
        case MorseCodeAlphabet.U.rawValue:
            return"U"
        case MorseCodeAlphabet.V.rawValue:
            return"V"
        case MorseCodeAlphabet.W.rawValue:
            return"W"
        case MorseCodeAlphabet.X.rawValue:
            return"X"
        case MorseCodeAlphabet.Y.rawValue:
            return"Y"
        case MorseCodeAlphabet.Z.rawValue:
            return"Z"
        case MorseCodeNumber.one.rawValue:
            return "1"
        case MorseCodeNumber.two.rawValue:
            return "2"
        case MorseCodeNumber.three.rawValue:
            return "3"
        case MorseCodeNumber.four.rawValue:
            return "4"
        case MorseCodeNumber.five.rawValue:
            return "5"
        case MorseCodeNumber.six.rawValue:
            return "6"
        case MorseCodeNumber.seven.rawValue:
            return "7"
        case MorseCodeNumber.eight.rawValue:
            return "8"
        case MorseCodeNumber.nine.rawValue:
            return "9"
        case MorseCodeNumber.zero.rawValue:
            return "0"
        case " ":
            return " "
        default:
            break
    }
    return ""
}

var inputLine = ""

var result = ""

var resultCount: Int = 0

// 무한 루프로 stop을 입력받을 때까지 입력받음
while (true) {
    
    // 이 부분을 화면에서 입력받을 것
    print("입력할 모스부호를 쓰세요.\n")
    let inputLine = readLine()
    
    // readLine()으로 입력된 String은 Optional이므로, 바인딩함.
    if let input = inputLine {
        let MorseCodeAlphabet = morse(input)
        if input == "stop" {
            result += MorseCodeAlphabet
        } else {
            result += MorseCodeAlphabet + ""
        }
    }
    
    if inputLine == "done" {
        print("모스부호의 입력을 종료합니다.\n")

        // 아무것도 입력하지 않아 result에 값이 없다면, 아래 라인을 출력하지 않기 위한 로직.
        if result == "" {
            break
        }
        
        print("<< 해석된 모스부호 >> ")
        for item in result {
            print(item)
        }
        break
    }
}

