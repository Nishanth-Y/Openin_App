//
//  EnvLoader.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import Foundation

// Load environment variables from .env file
func loadEnvVariables() {
    guard let path = Bundle.main.path(forResource: ".env", ofType: nil),
          let contents = try? String(contentsOfFile: path) else {
        fatalError("Unable to load .env file")
    }
    
    let lines = contents.split(separator: "\n")
    for line in lines {
        let parts = line.split(separator: "=")
        guard parts.count == 2 else { continue }
        let key = String(parts[0])
        let value = String(parts[1])
        setenv(key, value, 1)
    }
}

