//
//  DataInputView.swift
//  BMICalculator
//
//  Created by khoirunnisa' rizky noor fatimah on 19/03/23.
//

import SwiftUI

struct DataInputView: View {
    
    @ObservedObject var viewModel: CalculatorViewModel
    
    @State var title: String
    @State var value: Double
    @State var isEditing: Bool = false
    @State var minValue: Int
    @State var maxValue: Int
    @Binding var weightValue: Double
    @Binding var heightValue: Double
    
    var body: some View {
        HStack{
            Text(title).foregroundColor(.gray)
            Spacer()
            Text(String(format: "%.2f", value)).font(.largeTitle).fontWeight(.bold)
        }
        .padding()
        Slider(
            value: $value,
            in: Double(minValue) ... Double(maxValue),
            onEditingChanged: { editing in
                isEditing = editing
                viewModel.getBMIValue(weight: weightValue, height: heightValue)
                viewModel.getBMIStatus()
                viewModel.getStatusColor()
            }
        )
        .padding()
    }
}

