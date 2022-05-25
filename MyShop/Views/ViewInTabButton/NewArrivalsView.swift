//
//  NewArrivalsView.swift
//  MyShop
//
//  Created by Do Tuan on 21/05/2022.
//

import SwiftUI

struct NewArrivalsView: View {
    @StateObject var viewmodel = NewArrivalsViewModel()
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2),spacing: 15) {
            ForEach(viewmodel.sanpham_arr) { sp in
                SanPhamView(sanpham: sp)
            }
        }
    }
}

struct NewArrivalsView_Previews: PreviewProvider {
    static var previews: some View {
        NewArrivalsView()
    }
}
