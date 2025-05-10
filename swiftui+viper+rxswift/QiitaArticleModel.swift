//
//  QiitaArticleModel.swift
//  swiftui+viper+rxswift
//
//  Created by Takumi Oigawa on 2025/05/09.
//


// MARK: - QiitaArticleModel
struct QiitaArticleModel: Codable {
    let title: String
    let url: String
    let user: User
}

// MARK: - User
struct User: Codable {
    let id: String
    let profileImageURL: String

    enum CodingKeys: String, CodingKey {
        case id
        case profileImageURL = "profile_image_url"
    }
}