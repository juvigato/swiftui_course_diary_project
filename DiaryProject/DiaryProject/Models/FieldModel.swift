//
//  FieldModel.swift
//  DiaryProject
//
//  Created by Juliana Pavan on 05/12/25.
//

struct FieldModel: Decodable {
    let iconName: String
    let title: String
    let date: String
    let text: String
    let imageName: String?
    let tags: [String]
}
