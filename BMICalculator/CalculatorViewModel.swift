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
    @Published var bmiHistories: [BMIModel] = []
    
    func getBMIInfo(weight: Double, height: Double) {
        bmiValue = (weight * 10000 / (height * height ))
        switch bmiValue {
        case 0 ..< 18.5:
            bmiStatus = "Underweight"
            bmiColor = .blue
        case 18.5 ..< 25:
            bmiStatus = "Normal"
            bmiColor = .green
        case 25 ..< 30:
            bmiStatus = "Overweight"
            bmiColor = .orange
        case 30 ..< 200:
            bmiStatus = "Obese"
            bmiColor = .red
        default:
            bmiStatus = "Abnormal"
            bmiColor = .black
        }
    }
}
