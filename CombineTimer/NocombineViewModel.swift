//
//  NocombineViewModel.swift
//  CombineTimer
//
//  Created by cmStudent on 2022/07/11.
//

import Foundation

final class NoCombineViewModel: ObservableObject {
    @Published var count = 0
    @Published var isTimerRunning = false
    private var timer: Timer?
    
    func startCounting() {
        isTimerRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.count += 1
        }
    }
    func stopCounting() {
            isTimerRunning = false
            timer?.invalidate()
        }
        
        func resetCount() {
            count = 0
        }
    }
