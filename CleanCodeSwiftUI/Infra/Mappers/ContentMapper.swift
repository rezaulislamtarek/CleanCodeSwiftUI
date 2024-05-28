//
//  ContentMapper.swift
//  CleanCodeSwiftUI
//
//  Created by Rezaul Islam on 28/5/24.
//

import Foundation

struct ContentMapper{
    static func toEntity(from content : ContentModel) -> ContentEntity{
        return ContentEntity(theme: content.theme, url: content.url, level: content.level)
    }
    
    static func toModel(from content : ContentEntity) -> ContentModel{
        return ContentModel(theme: content.theme, url: content.url, level: content.level)
    }
}
