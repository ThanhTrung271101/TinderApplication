//
//  SizeConstant.swift
//  TinderApplication
//
//  Created by Thành Trung on 9/9/24.
//

import Foundation
import SwiftUI

struct SizeConstant {
    static var screenCutoff: CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return (windowScene.screen.bounds.width / 2) * 0.8
    }
    
    static var cardWidth: CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return windowScene.screen.bounds.width - 20
    }
    
    static var cardHeight: CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return 0
        }
        return windowScene.screen.bounds.height / 1.45
    }
}
