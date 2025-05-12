//
//  SamplePageProtocol.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/10.
//

import SwiftUICore

protocol SamplePageViewToPresenterProtocol: CommonViewToPresenterProtocol{
    func fetchData()
    func showSampleDetailPage()
}

protocol SamplePageInteractorToPresenterProtocol: CommonInteractorToPresenterProtocol{
    func fetchDataCompleted()
    func fetchDataFailed()
}

protocol SamplePagePresenterToViewProtocol: CommonPresenterToViewProtocol{
    associatedtype AssocView: View
    func showSamplePage() -> AssocView
}

protocol SamplePagePresenterToInteractorProtocol: CommonPresenterToInteractorProtocol{
    func fetchData()
}

protocol SamplePagePresenterToRouterProtocol: CommonPresenterToRouterProtocol{
    func pushToSampleDetailPage()
}
