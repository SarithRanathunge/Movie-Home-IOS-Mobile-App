//
//  Errors.swift
//  MovieHome
//
//  Created by Sarith Ranathunge on 2026-01-24.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(unnderlyingError: Error)
    
    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "API configuration file not found."
        case .dataLoadingFailed(underlyingError: let error):
            return "Failed to load data from API configuration file: \(error.localizedDescription)."
        case .decodingFailed(unnderlyingError: let error):
            return "Failed to decode API description: \(error.localizedDescription)."
        }
    }
    
    
}

enum NetworkError: Error, LocalizedError {
    case basedURLResonse(underlyingError: Error)
    case missingConfig
    case urlBuildFailed
    
    var errorDescription: String? {
        switch self {
        case .basedURLResonse(underlyingError: let error):
            return "Failed to prase URL response: \(error.localizedDescription)."
        case .missingConfig:
            return "Missing API configuration."
        case .urlBuildFailed:
            return "Failed to build URL."
        }
    }
}
