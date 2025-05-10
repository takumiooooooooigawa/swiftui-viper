//
//  SamplePagePresenter.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//

class SamplePagePresenter: CommonPresenter<SamplePageView, SamplePageInteractor, SamplePageRouter> {}


extension SamplePagePresenter: SamplePageViewToPresenterProtocol {
    func fetchData() {
    }
    
    func showSampleDetailPage() {
    }
}

extension SamplePagePresenter: SamplePageInteractorToPresenterProtocol {
    func fetchDataCompleted() {
    }
    
    func fetchDataFailed() {
    }
}
