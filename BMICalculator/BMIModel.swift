//
//  BMIModel.swift
//  BMICalculator
//
//  Created by khoirunnisa' rizky noor fatimah on 19/03/23.
//

import SwiftUI

struct BMIModel: Hashable {
    var date: Date
    var bmiValue: Double
    var bmiStatus: String
    var bmiColor: Color
    
    init(date: Date, bmiValue: Double, bmiStatus: String, bmiColor: Color) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let string = dateFormatter.string(from: date)
        self.date = dateFormatter.date(from: string) ?? date
        self.bmiValue = bmiValue
        self.bmiStatus = bmiStatus
        self.bmiColor = bmiColor
    }
    
    
}
