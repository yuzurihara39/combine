//
//  NocombineView.swift
//  CombineTimer
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI

struct NocombineView: View {
    @ObservedObject private var viewModel: NoCombineViewModel
    init(viewModel: NoCombineViewModel) {
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
                    .disabled(viewModel.isTimerRunning)
                    
                    Button("Stop") {
                        viewModel.stopCounting()
                    }.disabled(!viewModel.isTimerRunning)
                .padding()
                
                Button("Reset") {
                    viewModel.resetCount()
                }
            }
        }
    }
struct NocombineView_Previews: PreviewProvider {
    static var previews: some View {
        NocombineView(viewModel: NoCombineViewModel())
    }
}
