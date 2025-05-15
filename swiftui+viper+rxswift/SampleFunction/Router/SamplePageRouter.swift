//
//  SamplePageRouter.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//


class SamplePageRouter: CommonRouter<SamplePagePresenter> {}

extension SamplePageRouter: SamplePagePresenterToRouterProtocol {
    func pushToSampleDetailPage() -> SampleDetailPagePresenter {
        let presenter = SampleDetailPagePresenter()
        let view = SampleDetailPageView(presenter: presenter)
        let interactor = SampleDetailPageInteractor(presenter: presenter)
        let router = SampleDetailPageRouter(presenter: presenter)
        presenter.lateInit(view: view, interactor: interactor, router: router)
        return presenter
    }
}
