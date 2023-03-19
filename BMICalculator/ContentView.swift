//
//  ContentView.swift
//  BMICalculator
//
//  Created by khoirunnisa' rizky noor fatimah on 19/03/23.
//

import SwiftUI

enum Category {
    case calculator, history
}

struct ContentView: View {
    @ObservedObject var viewModel: CalculatorViewModel
    @State var selectedCategory: Category = .calculator
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("View Type", selection: $selectedCategory) {
                    Text("Calculator").tag(Category.calculator)
                    Text("History").tag(Category.history)
                }
                .pickerStyle(.segmented)
                
                switch selectedCategory {
                case .calculator: CalculatorView(viewModel: viewModel)
                case .history: HistoryView()
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Body Mass Index")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: CalculatorViewModel())
    }
}
