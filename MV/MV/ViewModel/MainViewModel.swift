//
//  MainViewModel.swift
//  MV
//
//  Created by 近江伸一 on 2023/05/06.
//

import Foundation
class MainViewModel {
    
    func numberObSections() -> Int{
        return 1
   
    }
    
    func numberOfRows(in section: Int) -> Int{
        return 5
        
    }
    func getData(){
        ApiCaller.getTrendingMovies { result in
            switch result {
            case .success(let data):
                print("Top Treading Counts: \(data.results.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
