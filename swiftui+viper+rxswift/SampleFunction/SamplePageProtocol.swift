//
//  SamplePageProtocol.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//

import SwiftUICore

protocol SamplePageViewToPresenterProtocol: CommonViewToPresenterProtocol{
    func fetchData()
    associatedtype AssocViewV2P: View
    @MainActor func showSampleDetailPage() -> AssocViewV2P
}

protocol SamplePageInteractorToPresenterProtocol: CommonInteractorToPresenterProtocol{
    func fetchDataCompleted()
    func fetchDataFailed()
}

protocol SamplePageRouterToPresenterProtocol: CommonRouterToPresenterProtocol{
    associatedtype AssocViewR2P: View
    @MainActor func showSamplePage() -> AssocViewR2P
}

protocol SamplePagePresenterToViewProtocol: CommonPresenterToViewProtocol{
    associatedtype AssocViewP2V: View
    @MainActor func showSamplePage() -> AssocViewP2V
}

protocol SamplePagePresenterToInteractorProtocol: CommonPresenterToInteractorProtocol{
    func fetchData()
}

protocol SamplePagePresenterToRouterProtocol: CommonPresenterToRouterProtocol{
    func pushToSampleDetailPage() -> SampleDetailPagePresenter
}

