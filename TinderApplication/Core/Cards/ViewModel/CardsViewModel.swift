//
//  CardsViewModel.swift
//  TinderApplication
//
//  Created by Thành Trung on 11/9/24.
//

import Foundation

class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private var service: CardService
    
    init(service: CardService) {
        self.service = service
        Task {
            try await fetchCardModels()
        }
    }
    
    func fetchCardModels() async throws {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch cards with error \(error.localizedDescription)")
        }
    }
    
}
