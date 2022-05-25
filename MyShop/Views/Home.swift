//
//  Home.swift
//  MyShop
//
//  Created by Do Tuan on 21/05/2022.
//

import SwiftUI

struct Home: View {
    @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @StateObject var viewmodel = NewArrivalsViewModel()
    @State var selectedtab1 = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            ZStack {
                HStack (spacing: 15) {
                    Button(action: {}, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.title)
                            .foregroundColor(.black)
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "cart")
                            .font(.title)
                            .foregroundColor(.black)
                    })
                    
                    
                }
                Text("My Shop")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
            }
            .padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            Spacer(minLength: 0)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(scroll_Tabs, id: \.self) { tab in
                                // tab button
                                TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 10)
                    })
                    
                    
                    NewArrivalsView()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("See all items")
                    })
                    .foregroundColor(.black)
                    .NewButton()
                }
            })
            
            
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(1.0), radius: 3, x: 1, y: 2)
    }
}

extension View {
    func NewButton() -> some View {
        ModifiedContent(content: self, modifier: ButtonViewModifier())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
