//
//  ApiColler.swift
//  MV
//
//  Created by 近江伸一 on 2023/05/06.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
    
}
public class ApiCaller {
    static func getTrendingMovies(completionHander: @escaping (_ result: Result<TrendingMoviewModel, NetworkError>) -> Void){
        let urlString = NetworkConstant.sheraed.serverAddress +
        "trending/all/day?api_key=" +
        NetworkConstant.sheraed.apikey
        guard let url = URL(string: urlString) else {
            completionHander(.failure(.urlError))
            return
            
        }
        URLSession.shared.dataTask(with: url) {
             dataResponse, urlRequest,error in
            if error == nil ,
                let data = dataResponse,
               let resultData = try? JSONDecoder().decode(TrendingMoviewModel.self, from: data) {
            completionHander(.success(resultData))
        } else {
                completionHander(.failure(.canNotParseData))
            }
        }
        
    }
    
}
