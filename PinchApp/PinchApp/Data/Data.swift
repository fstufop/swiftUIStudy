//
//  Data.swift
//  PinchApp
//
//  Created by Filipe Simoes Teodoro on 14/01/23.
//

import Foundation
typealias Thumb = Asset.Thumbnails
typealias Pages = Asset.Pages
let pagesData: [Page] = [
    Page(id: 0, image: Pages.magazineFrontCover, thumbnails: Thumb.thumbMagazineFrontCover),
    Page(id: 1, image: Pages.magazineBackCover, thumbnails: Thumb.thumbMagazineBackCover)
]
