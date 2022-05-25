//
//  SanPham.swift
//  MyShop
//
//  Created by Do Tuan on 21/05/2022.
//

import Foundation
//typealias APIModel = Decodable & Identifiable
struct SanPham: Codable, Identifiable {
    var id: String
    var SP_code: String
    var tenSP: String
    var hinh_anh: String
    var so_luong_ton: String
    var don_gia: String
    var mo_ta: String
    var loaiSP_id: String
}


var scroll_Tabs = ["New Arrivals", "Tops", "Outerwears", "Bottoms", "Size Chart"]
