//
//  OnboardModel.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import Foundation

struct OnboardModel: Identifiable {
    var id: UUID = UUID()
    
    let imageName: String
    let description: String
    
    static let items: [OnboardModel] = [
        OnboardModel(imageName: "img_variant_1", description: "Hand-pickle high quality snacks."),
        OnboardModel(imageName: "img_variant_2", description: "Shop global. Mind-blownly affordable."),
        OnboardModel(imageName: "img_variant_3", description: "Deliver on the promise of time.")
    ]
}
