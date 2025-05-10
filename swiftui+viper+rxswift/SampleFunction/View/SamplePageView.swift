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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

//#Preview {
//    SamplePageView()
//}
