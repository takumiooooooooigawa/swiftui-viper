//
//  SamplePageView.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//



import SwiftUI

class SamplePageView: CommonView<SamplePagePresenter> {}

extension SamplePageView: SamplePagePresenterToViewProtocol{
    @MainActor func showSamplePage() -> some View {
        SamplePage(presenter: presenter!)
    }
}

struct SamplePage: View {
    @State var presenter: SamplePagePresenter

    var body: some View {
        NavigationStack {
            NavigationLink(value: "NewView") {
                Text("Show NewView")
            }
            .buttonStyle(.plain)
            .navigationDestination(for: String.self) { view in
                presenter.showSampleDetailPage()
            }
        }
    }
}

//#Preview {
//    SamplePage()
//}
