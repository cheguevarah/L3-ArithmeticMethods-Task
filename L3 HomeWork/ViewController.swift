    //
    //  ViewController.swift
    //  test
    //
    //  Created by Sasha on 1/26/19.
    //  Copyright © 2019 Sasha. All rights reserved.
    //
    
    import UIKit
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            
            //        maxFromTwo(num1: 123, num2: 999)
            //        squareAndСube(num1: 3)
            //        allNumsFromTo(countTill: 5)
            //        absoluteNum(numToFind: 10)
                    balanceInBank(depo: 24, percent: 0.06, start: 1827, end: 2019)
            //        studentsMoney(income: 700, outcome: 1000, inflation: 0.03, time: 10)
//                    studentToSurvive(savings: 2400, income: 700, outcome: 1000, inflation: 0.03)
//                    flipOfNumber(numToFlip: 521)
            
            
            
        }
        
        
        //    Большее из двух чисел
        
        func maxFromTwo(num1: Int, num2: Int) ->Int {
            if num1 > num2 {
                return num1
            } else {
                return num2
            }
        }
        
        
        // куб и квадрат числа
        
        func squareAndСube (num1: Int) {
            let squareOfNum = num1 * num1
            print("Квадрат числа \(num1) равен \(squareOfNum)")
            let cubeOfNum = squareOfNum * num1
            print("Куб числа \(num1) равен \(cubeOfNum)")
        }
        
        
        // числа от и до
        
        func allNumsFromTo (countTill: Int) {
            for i in 0...countTill {
                print("\(i) \(countTill - i)")
            }
        }
        
        
        // Совершенное число и его делители
        
        func absoluteNum (numToFind : Int) {
            var summOfDiv = 0
            print("Делители числа \(numToFind):")
            for i in 1...(numToFind - 1) {
                if numToFind % i == 0 {
                    summOfDiv = summOfDiv + i
                    print(i)
                }
            }
            if summOfDiv == numToFind {
                print("\(numToFind) - совершенное число")
            } else {
                print("\(numToFind) - НЕ совершенное число")
            }
            
        }
        
        
        // Проценты в банке
        
        func balanceInBank (depo: Double, percent: Double, start: Int, end: Int) {
            var summWithProc: Double = depo
            var totalSumm: Double = 0
            for i in start...end {
                summWithProc += summWithProc * percent
                totalSumm = summWithProc
                print("За год \(i) выйдет сумма: \(Float(summWithProc))")
            }
            print("Всего накапало бы \(Int(totalSumm)) $")
            
        }
        
        
        //Cтуденту чтоб прожить на степуху
        
        func studentsMoney (income: Double, outcome: Double, inflation: Double, time: Int) {
            var totalOutcome: Double = 0
            var totalIncome: Double = 0
            var needMoney: Double = 0
            for _ in 0..<time {
                totalOutcome += totalOutcome * inflation + outcome
                totalIncome += income
                needMoney = totalIncome - totalOutcome
                
            }
            
            print("Чтоб прожить \(time) месяцев, студенту не хватает \(Float(needMoney)). Вся необходимая сумма состалвяет \(Float(totalOutcome))")
        }
        
        
        // Студенту прожить с накоплениями
        
        func studentToSurvive (savings: Double, income: Double, outcome: Double, inflation: Double ) {
            var totalMoney = savings + income
            var totalSpend = outcome
            var time : Double = 0
            while (totalMoney - totalSpend) >= 0 {
                totalSpend += outcome * inflation
                totalMoney += income - totalSpend
                time += 1
            }
            print("На эти деньги студент сможет прожить \(Int(time)) месяцев")
        }
        
        
        //  Перевернуть число
        
        func flipOfNumber (numToFlip: Int) {
            var normalNumber = numToFlip
            var flippedNumber = 0
            var firstNum = 0
            var lastNum = 0
            if normalNumber > 0 && normalNumber < 100 {
                firstNum = (normalNumber%10) * 10
                lastNum = (normalNumber - (normalNumber%10))/10
                flippedNumber = firstNum + lastNum
            } else {
                if normalNumber >= 100 && normalNumber < 1000 {
                    firstNum = (normalNumber%10) * 100
                    lastNum = (normalNumber - (normalNumber%20))/10
                    flippedNumber = firstNum + lastNum
                }
            }
            print("Зеркальный переворот числа \(numToFlip) будет \(flippedNumber)")
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
    }
