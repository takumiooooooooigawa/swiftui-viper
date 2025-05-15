//
//  SampleDetailPageRouter.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/15.
//

class SampleDetailPageRouter: CommonRouter<SampleDetailPagePresenter> {}

extension SampleDetailPageRouter: SampleDetailPagePresenterToRouterProtocol {
    func pushToSamplePage() -> SamplePagePresenter {
        let presenter = SamplePagePresenter()
        let view = SamplePageView(presenter: presenter)
        let interactor = SamplePageInteractor(presenter: presenter)
        let router = SamplePageRouter(presenter: presenter)
        presenter.lateInit(view: view, interactor: interactor, router: router)
        return presenter
    }
}
