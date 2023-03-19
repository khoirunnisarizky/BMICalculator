//
//  DataInputView.swift
//  BMICalculator
//
//  Created by khoirunnisa' rizky noor fatimah on 19/03/23.
//

import SwiftUI

struct DataInputView: View {
    
    @State var date: Date
    @State var bmiValue: Double
    @State var bmiStatus: String
    @State var bmiColor: Color
    
    var body: some View {
        
        VStack {
            Text("\(date)").foregroundColor(.gray)
            HStack{
                Text(String(format: "%.2f", bmiValue)).font(.largeTitle).fontWeight(.bold)
                Spacer()
                Text("\(bmiStatus)").foregroundColor(bmiColor)
            }
            .padding()
        }
    }
}

