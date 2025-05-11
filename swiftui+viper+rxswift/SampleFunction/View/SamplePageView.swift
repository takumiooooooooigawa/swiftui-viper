//
//  SamplePageView.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//



import SwiftUI

class SamplePageView: CommonView<SamplePagePresenter> {}

extension SamplePageView: SamplePagePresenterToViewProtocol{
    func showSamplePage() -> any View {
        SamplePage()
    }
}

struct SamplePage: View {
    var body: some View {
        NavigationStack(){
            Button("遷移する"){
                // path.append(0)
            }
            .navigationTitle("ホーム")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Int.self, destination: { _ in
                Text("hoge")
            })
        }
    }
}

#Preview {
    SamplePage()
}
