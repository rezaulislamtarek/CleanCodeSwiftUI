//
//  ContentViewModel.swift
//  CleanCodeSwiftUI
//
//  Created by Rezaul Islam on 28/5/24.
//

import Foundation

struct ContentViewModel{
    private var _fetchContentUseCase : FetchContentUseCase
    
    init(_fetchContentUseCase: FetchContentUseCase) {
        self._fetchContentUseCase = _fetchContentUseCase
    }
    
    func fetchContents() -> [ContentEntity] {
         return _fetchContentUseCase.call()
    }
}

 
