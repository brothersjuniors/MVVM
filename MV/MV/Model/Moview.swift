//
//  Moview.swift
//  MV
//
//  Created by 近江伸一 on 2023/05/06.
//

import Foundation
struct TrendingMoviewModel: Codable {
    let page: Int
    let results: [Movie]
    let totalPages, totalResults: Int
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
        
    }
    
}
struct Movie: Codable {
    let backdropPath: String
    let id: Int
    let title: String?
    let originalTitle: String?
    let overview: String?
    let populartity: String?
    let posterPath: Double?
    let releaseDate: String?
    let voteAverage: Double?
    let voteCount: Int
    
    }
