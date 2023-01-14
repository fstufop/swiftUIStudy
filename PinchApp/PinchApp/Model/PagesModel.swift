//
//  PagesModel.swift
//  PinchApp
//
//  Created by Filipe Simoes Teodoro on 14/01/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let image: ImageAsset
    let thumbnails: ImageAsset
}
