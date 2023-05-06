//
//  NetworkConstant.swift
//  MV
//
//  Created by 近江伸一 on 2023/05/06.
//

import Foundation
class NetworkConstant{
    public static var sheraed: NetworkConstant = NetworkConstant()
    
    private init() {}
    public var apikey: String {
        get {
            return "91540bd9c5f66b73ecfbef341a5bvd5f"
        }
    }
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
    
    
    
    
}
