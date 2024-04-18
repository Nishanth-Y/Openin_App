//
//  DashboardViewModel.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import Foundation

class ApiManager {
    static func fetchData(completion: @escaping (Result<Json4Swift_Base, Error>) -> Void) {
           // Set bearer token for API calls
          loadEnvVariables()
        
           guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
               completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
               return
           }
            
        
            var request = URLRequest(url: url)
        
            request.httpMethod = "GET"
            if let token = ProcessInfo.processInfo.environment["BEARER_TOKEN"] {
                request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            } else {
                completion(.failure(NSError(domain: "Bearer token not found in environment", code: 0, userInfo: nil)))
                return
            }
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                    completion(.failure(NSError(domain: "Invalid response", code: 0, userInfo: nil)))
                    return
                }
                
                guard let data = data else {
                    completion(.failure(NSError(domain: "No data received", code: 0, userInfo: nil)))
                    return
                }
                
                do {
                    let decodedResponse = try JSONDecoder().decode(Json4Swift_Base.self, from: data)
                    completion(.success(decodedResponse))
                } catch {
                    completion(.failure(error))
                }
            }.resume()
       }
}
