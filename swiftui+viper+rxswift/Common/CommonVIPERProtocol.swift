//
//  CommonVIPERProtocol.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//

protocol CommonPresenterToViewProtocol: AnyObject {}
protocol CommonPresenterToInteractorProtocol: AnyObject {}
protocol CommonPresenterToRouterProtocol: AnyObject {}
protocol CommonViewToPresenterProtocol: AnyObject {}
protocol CommonInteractorToPresenterProtocol: AnyObject {}

class CommonPresenter<View: CommonPresenterToViewProtocol, Interactor: CommonPresenterToInteractorProtocol, Router: CommonPresenterToRouterProtocol> {
    var view: View?
    var interactor: Interactor?
    var router: Router?
}

class CommonView<Presenter: CommonViewToPresenterProtocol> {
    var presenter: Presenter?
}

class CommonInteractor<Presenter: CommonInteractorToPresenterProtocol> {
    var presenter: Presenter?
}
