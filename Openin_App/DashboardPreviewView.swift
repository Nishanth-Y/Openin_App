//
//  DashboardPreviewView.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var response: Json4Swift_Base?
    @Published var isLoading = false
    @Published var error: Error?

    func fetchData() {
        isLoading = true
        ApiManager.fetchData { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                    case .success(let response):
                        self.response = response
                    case .failure(let error):
                        self.error = error
                }
            }
        }
    }
}
