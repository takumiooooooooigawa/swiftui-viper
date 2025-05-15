//
//  SampleDetailPageView.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/15.
//


import SwiftUI

class SampleDetailPageView: CommonView<SampleDetailPagePresenter> {}

extension SampleDetailPageView: SampleDetailPagePresenterToViewProtocol{
    @MainActor func showSampleDetailPage() -> some View {
        SampleDetailPage(presenter: presenter!)
    }
}

struct SampleDetailPage: View {
    @State var presenter: SampleDetailPagePresenter

    var body: some View {
        Text("Detail Page")
    }
}


//#Preview {
//    SampleDetailPage()
//}
