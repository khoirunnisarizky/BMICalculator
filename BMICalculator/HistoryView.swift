//
//  HistoryView.swift
//  BMICalculator
//
//  Created by khoirunnisa' rizky noor fatimah on 19/03/23.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var viewModel: CalculatorViewModel
    
    var body: some View {
        List(viewModel.bmiHistories, id: \.self) { bmiData in
            DataInputView(date: bmiData.date, bmiValue: bmiData.bmiValue, bmiStatus: bmiData.bmiStatus, bmiColor: bmiData.bmiColor)
        }
        //.scrollContentBackground(.hidden)
    }
}
