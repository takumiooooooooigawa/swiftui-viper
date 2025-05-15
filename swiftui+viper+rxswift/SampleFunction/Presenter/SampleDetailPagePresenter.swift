//
//  SampleDetailPagePresenter.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/15.
//

import SwiftUI

class SampleDetailPagePresenter: CommonPresenter<SampleDetailPageView, SampleDetailPageInteractor, SampleDetailPageRouter> {}


extension SampleDetailPagePresenter: SampleDetailPageViewToPresenterProtocol {
    func fetchData() {
    }

    @MainActor func showSamplePage() -> some View {
        let sampleRouter = router!.pushToSamplePage()
        return sampleRouter.showSamplePage()
    }
}

extension SampleDetailPagePresenter: SampleDetailPageInteractorToPresenterProtocol {
    func fetchDataCompleted() {
    }
    
    func fetchDataFailed() {
    }
}

extension SampleDetailPagePresenter: SampleDetailPageRouterToPresenterProtocol {
    @MainActor func showSampleDetailPage() -> some View {
        return view!.showSampleDetailPage()
    }
}
