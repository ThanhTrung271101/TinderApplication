//
//  CardsViewModel.swift
//  TinderApplication
//
//  Created by Thành Trung on 11/9/24.
//

import Foundation

@MainActor
class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    @Published var buttonSwipeAction: SwipeAction?

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

    func removeCard(_ card: CardModel) {
        guard let index = cardModels.firstIndex(where: { $0.id == card.id }) else { return }
        cardModels.remove(at: index)
    }

}
