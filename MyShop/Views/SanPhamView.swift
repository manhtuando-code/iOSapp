//
//  SanPhamView.swift
//  MyShop
//
//  Created by Do Tuan on 21/05/2022.
//

import SwiftUI

struct SanPhamView: View {
    var sanpham: SanPham
    
    var body: some View {
        VStack (alignment: .leading, spacing: 6) {
            AsyncImage(url: URL(string: sanpham.hinh_anh)) { image in
                image
                    .resizable()
            } placeholder: {
                ProgressView()
            }
            .aspectRatio(contentMode: .fit)
            
            Text(sanpham.tenSP)
                .font(.system(size: 12))
                .fontWeight(.thin)
                .foregroundColor(.black)
            
            Text(String(sanpham.don_gia + "đ"))
                .fontWeight(.heavy)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        
    }
}

//struct SanPhamView_Previews: PreviewProvider {
//    static var previews: some View {
//        SanPhamView(sanpham: SanPham(id: 1, SP_code: "asdsa", SP_ten: "SDSD", SP_hinhanh: "SDSD", SP_so_luong_ton: 2, SP_don_gia: 3, SP_mo_ta: "DSD", loaiSP_id: "SDSDa"))
//    }
//}
