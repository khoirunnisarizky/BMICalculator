//
//  CalculatorViewModel.swift
//  BMICalculator
//
//  Created by khoirunnisa' rizky noor fatimah on 19/03/23.
//
import SwiftUI
import Foundation

class CalculatorViewModel: ObservableObject {
    
    @Published var bmiValue: Double = 0.0
    @Published var bmiStatus: String = "No Data"
    @Published var bmiColor: Color = .black
    
    func getBMIValue(weight: Double, height: Double) {
        bmiValue = (weight * 10000 / (height * height ))
    }
    
    func getBMIStatus() {
        switch bmiValue {
        case 0 ..< 18.5:
            bmiStatus = "Underweight"
        case 18.5 ..< 25:
            bmiStatus = "Normal"
        case 25 ..< 30:
            bmiStatus = "Overweight"
        case 30 ..< 200:
            bmiStatus = "Obese"
        default:
            bmiStatus = "Abnormal"
        }
    }
    
    func getStatusColor() {
        switch bmiValue {
        case 0 ..< 18.5:
            bmiColor = .blue
        case 18.5 ..< 25:
            bmiColor = .green
        case 25 ..< 30:
            bmiColor = .orange
        case 30 ..< 200:
            bmiColor = .red
        default:
            bmiColor = .black
        }
    }
}
