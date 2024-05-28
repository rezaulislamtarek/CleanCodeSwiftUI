//
//  FetchContentUseCase.swift
//  CleanCodeSwiftUI
//
//  Created by Rezaul Islam on 28/5/24.
//

import Foundation

protocol FetchContentUseCase{
    func call() -> [ContentEntity]
}

struct FetchContentUseCaseImp : FetchContentUseCase {
    
    var repository : ContentRepository
    
    func call() -> [ContentEntity] {
        return repository.fetchContents()
    }
    
    
}
