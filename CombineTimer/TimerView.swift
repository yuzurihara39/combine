//
//  TimerView.swift
//  CombineTimer
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject private var viewModel: TimerViewModel
    init(viewModel: TimerViewModel) {
            self.viewModel = viewModel
        }
    private var dateFormatter: DateFormatter {
         let formatter = DateFormatter()
         formatter.timeStyle = .medium
         return formatter
      }
    var body: some View {
        VStack {
            Text("\(viewModel.lastUpdated, formatter: dateFormatter)")
                    .font(Font.title.monospacedDigit())
                    .padding()
            
            
                    Button(action: {
                       self.viewModel.stop()
                    }, label: { Text("停止") })
                    .padding()
            Button("再生") {
                viewModel.timerStart()
            }
            .disabled(viewModel.TimerStart)
                 }
        .onAppear {
                // 表示と同時にスタート
                self.viewModel.timerStart()
             }
        }
        
    }


struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(viewModel: TimerViewModel())
    }
}
