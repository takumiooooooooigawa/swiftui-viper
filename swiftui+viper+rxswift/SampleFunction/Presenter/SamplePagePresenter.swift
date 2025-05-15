//
//  SamplePagePresenter.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//

import SwiftUI

class SamplePagePresenter: CommonPresenter<SamplePageView, SamplePageInteractor, SamplePageRouter> {}


extension SamplePagePresenter: SamplePageViewToPresenterProtocol {
    func fetchData() {
    }
    
    @MainActor func showSampleDetailPage() -> some View {
        let detailRouter = router!.pushToSampleDetailPage()
        return detailRouter.showSampleDetailPage()
    }
}

extension SamplePagePresenter: SamplePageInteractorToPresenterProtocol {
    func fetchDataCompleted() {
    }
    
    func fetchDataFailed() {
    }
}

extension SamplePagePresenter: SamplePageRouterToPresenterProtocol {
    @MainActor func showSamplePage() -> some View {
        return view!.showSamplePage()
    }
}
