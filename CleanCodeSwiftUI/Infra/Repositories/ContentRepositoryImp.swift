//
//  ContentRepositoryImp.swift
//  CleanCodeSwiftUI
//
//  Created by Rezaul Islam on 28/5/24.
//

import Foundation

struct ContentRepositoryImp : ContentRepository{
    
    var dataSource: ContentDatasource
    
    func fetchContents() -> [ContentEntity] {
        let contents : [ContentModel] = dataSource.fetchContents()
        return contents.map({ContentMapper.toEntity(from: $0) })
    }
    
}
