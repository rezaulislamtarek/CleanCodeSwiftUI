//
//  ContentDatasource.swift
//  CleanCodeSwiftUI
//
//  Created by Rezaul Islam on 28/5/24.
//

import Foundation

protocol ContentDatasource{
    func fetchContents() -> [ContentModel]
}
