//
//  TimerViewModel.swift
//  CombineTimer
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI
import Combine

final class TimerViewModel: ObservableObject {
    @Published var lastUpdated: Date
    @Published var TimerStart = false

      init() {
         lastUpdated = Date()
      }

      private let myDispatchQueue = DispatchQueue.main

      private var cancellable: AnyCancellable?

      /// スタート処理
      func timerStart() {
          TimerStart = true
         cancellable = Timer.publish(every: 1, on: .main, in: .default)
            .autoconnect()
            .receive(on: myDispatchQueue)
            .assign(to: \.lastUpdated, on: self)
      }

      func stop() {
         cancellable?.cancel()
          TimerStart = false
      }
    }

