//
//  SampleDetailPageProtocol.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/15.
//

import SwiftUICore

protocol SampleDetailPageViewToPresenterProtocol: CommonViewToPresenterProtocol{
    func fetchData()
    associatedtype AssocViewV2P: View
    @MainActor func showSamplePage() -> AssocViewV2P
}

protocol SampleDetailPageInteractorToPresenterProtocol: CommonInteractorToPresenterProtocol{
    func fetchDataCompleted()
    func fetchDataFailed()
}

protocol SampleDetailPageRouterToPresenterProtocol: CommonRouterToPresenterProtocol{
    associatedtype AssocViewR2P: View
    @MainActor func showSampleDetailPage() -> AssocViewR2P
}

protocol SampleDetailPagePresenterToViewProtocol: CommonPresenterToViewProtocol{
    associatedtype AssocViewP2V: View
    @MainActor func showSampleDetailPage() -> AssocViewP2V
}

protocol SampleDetailPagePresenterToInteractorProtocol: CommonPresenterToInteractorProtocol{
    func fetchData()
}

protocol SampleDetailPagePresenterToRouterProtocol: CommonPresenterToRouterProtocol{
    func pushToSamplePage() -> SamplePagePresenter
}
