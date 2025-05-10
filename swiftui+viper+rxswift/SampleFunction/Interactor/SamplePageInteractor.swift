//
//  SamplePageInteractor.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//

class SamplePageInteractor: CommonInteractor<SamplePagePresenter> {}

extension SamplePageInteractor: SamplePagePresenterToInteractorProtocol {
    func fetchData() {
    }
}
