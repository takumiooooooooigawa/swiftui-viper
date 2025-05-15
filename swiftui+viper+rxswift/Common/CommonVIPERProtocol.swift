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
protocol CommonRouterToPresenterProtocol: AnyObject {}

typealias Presenter = CommonPresenter
class CommonPresenter<View: CommonPresenterToViewProtocol, Interactor: CommonPresenterToInteractorProtocol, Router: CommonPresenterToRouterProtocol> {
    var view: View?
    var interactor: Interactor?
    var router: Router?

    
    func lateInit(view: View, interactor: Interactor, router: Router) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

class CommonView<Presenter: CommonViewToPresenterProtocol> {
    weak var presenter: Presenter?
    
    init(presenter: Presenter) {
        self.presenter = presenter
    }
}

class CommonInteractor<Presenter: CommonInteractorToPresenterProtocol> {
    weak var presenter: Presenter?
    
    init(presenter: Presenter) {
        self.presenter = presenter
    }
}

class CommonRouter<Presenter: CommonRouterToPresenterProtocol> {
    weak var presenter: Presenter?
    
    init(presenter: Presenter) {
        self.presenter = presenter
    }
}
