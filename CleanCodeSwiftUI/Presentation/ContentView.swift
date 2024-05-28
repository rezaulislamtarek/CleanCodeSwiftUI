//
//  ContentView.swift
//  CleanCodeSwiftUI
//
//  Created by Rezaul Islam on 28/5/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var vm : ContentViewModel
    
    init(){
        let dataSource : ContentDatasource = ContentRemoteDatasource()
        let contentRepo : ContentRepository = ContentRepositoryImp(dataSource: dataSource)
        let fetchContentUseCase : FetchContentUseCase = FetchContentUseCaseImp(repository: contentRepo)
        vm = ContentViewModel(_fetchContentUseCase:  fetchContentUseCase)
    }
    
    @State var contents : [ContentEntity] = []
    
    var body: some View {
        
        VStack {
            List {
                ForEach(contents, id: \.self.level) { content in
                    VStack{
                        Text(content.theme)
                            .font(.title2)
                        
                        Text(content.level)
                            .font(.footnote)
                            .padding(.horizontal)
                            .padding(.vertical,4)
                            .background(.green.opacity(0.1))
                            .cornerRadius(16)
                    }
                }
            }
        }
        .padding()
        .task {
            contents =  vm.fetchContents()
        }
    }
}

#Preview {
    ContentView()
}
