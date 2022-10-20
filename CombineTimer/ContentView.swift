//
//  ContentView.swift
//  CombineTimer
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    var vm = NoCombineViewModel()
    var vm2 = CombineViewModel()
    var vm3 = TimerViewModel()
    var body: some View {
        TabView {
            NocombineView(viewModel: vm)
            .tabItem {
                Image(systemName: "1.circle.fill")
                Text("コンバインなし")
            }
            CombineView(viewModel: vm2)
            .tabItem {
                Image(systemName: "1.circle.fill")
                Text("コンバインあり")
            }
            TimerView(viewModel: vm3)
            .tabItem {
                Image(systemName: "1.circle.fill")
                Text("時間")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
