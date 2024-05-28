//
//  ContentRemoteDatasource.swift
//  CleanCodeSwiftUI
//
//  Created by Rezaul Islam on 28/5/24.
//

import Foundation

struct ContentRemoteDatasource : ContentDatasource {
    func fetchContents() -> [ContentModel] {
        return [
            ContentModel(theme: "Theme 1", url: "url1", level: "Level 1"),
            ContentModel(theme: "Theme 2", url: "url2", level: "Level 2"),
            ContentModel(theme: "Theme 3", url: "url3", level: "Level 3"),
            ContentModel(theme: "Theme 4", url: "url4", level: "Level 4"),
        ]
    }
    
    
}
