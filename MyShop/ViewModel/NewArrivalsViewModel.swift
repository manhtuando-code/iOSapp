//
//  NewArrivalsViewModel.swift
//  MyShop
//
//  Created by Do Tuan on 21/05/2022.
//

import Foundation

class NewArrivalsViewModel: ObservableObject {
    private let urlString = "http://localhost/server/getNewArrivalsHome.php"
    @Published var sanpham_arr: [SanPham] = []
    
    init() {
        loadAPI()
    }
    
    func loadAPI() {
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print("invalid data")
                return
            }
            DispatchQueue.main.sync {
                self.sanpham_arr = try! JSONDecoder().decode([SanPham].self, from: data)
            }
            
            
//            DispatchQueue.main.sync {
//                self.sanpham_arr = sanphamResult.feed.results
//            }
            
            
            
        }.resume()
    }
}
