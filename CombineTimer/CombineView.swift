//
//  CombineView.swift
//  CombineTimer
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI

struct CombineView: View {
    @ObservedObject private var viewModel: CombineViewModel
    init(viewModel: CombineViewModel) {
            self.viewModel = viewModel
        }
    var body: some View {
        VStack {
                    Text("\(viewModel.count)")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    
                    Button("Start") {
                        viewModel.startCounting()
                    }
                    .disabled(viewModel.isTimerStart)
                    
                    Button("Stop") {
                        viewModel.stopCounting()
                    }.disabled(!viewModel.isTimerStart)
                .padding()
                
                Button("Reset") {
                    viewModel.resetCount()
                }
            }
        }
    }

struct CombineView_Previews: PreviewProvider {
    static var previews: some View {
        CombineView(viewModel: CombineViewModel())
    }
}
