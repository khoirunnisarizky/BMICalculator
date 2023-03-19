//
//  CalculatorView.swift
//  BMICalculator
//
//  Created by khoirunnisa' rizky noor fatimah on 19/03/23.
//

import SwiftUI

struct CalculatorView: View {
    
    @ObservedObject var viewModel: CalculatorViewModel
    
    @State var weightValue: Double = 30
    @State var heightValue: Double = 120
    @State var isEditing: Bool = false
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Weight (kg)").foregroundColor(.gray)
                Spacer()
                Text(String(format: "%.2f", weightValue)).font(.largeTitle).fontWeight(.bold)
            }
            .padding()
            Slider(
                value: $weightValue,
                in: Double(30) ... Double(120),
                onEditingChanged: { editing in
                    isEditing = editing
                    viewModel.getBMIValue(weight: weightValue, height: heightValue)
                    viewModel.getBMIStatus()
                    viewModel.getStatusColor()
                }
            )
            .padding()
            
            HStack{
                Text("Height (cm)").foregroundColor(.gray)
                Spacer()
                Text(String(format: "%.2f", heightValue)).font(.largeTitle).fontWeight(.bold)
            }
            .padding()
            Slider(
                value: $heightValue,
                in: Double(120) ... Double(200),
                onEditingChanged: { editing in
                    isEditing = editing
                    viewModel.getBMIValue(weight: weightValue, height: heightValue)
                    viewModel.getBMIStatus()
                    viewModel.getStatusColor()
                }
            )
            .padding()
            
            HStack{
                Text("Your Body Mass Index").foregroundColor(.gray)
                Spacer()
                VStack {
                    Text(String(format: "%.2f", viewModel.bmiValue))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(viewModel.bmiStatus)
                        .foregroundColor(viewModel.bmiColor)
                }
            }
            .padding()
            
            GeometryReader { reader in
                HStack{
                    Spacer()
                    Button("Save to  history") {
                        print("saved")
                    }
                    .padding(.all)
                    .frame(width: reader.size.width - 20)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                    Spacer()
                }
            }
            
        }
        
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(viewModel: CalculatorViewModel())
    }
}
