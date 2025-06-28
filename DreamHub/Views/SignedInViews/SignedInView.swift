//
//  SignedInView.swift
//  DreamHub
//
//  Created by Yi Ling on 6/26/25.
//

import Foundation
import SwiftUI

struct SignedInView: View {
    @State var page = 0
    
    var body: some View {
        NavigationStack{
            VStack{
                if page == 0{
                    DreamView()
                } else if page == 1{
                    DreamView()
                } else {
                    DreamView()
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        page = 0
                    } label: {
                        Image(systemName: "bag.fill")
                    }
                }
                
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        page = 1
                    } label: {
                        Image(systemName: "heart.fill")
                    }
                }
                
                ToolbarItem(placement: .topBarLeading){
                    Button {
                        page = 2
                    } label: {
                        Image(systemName: "car.fill")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        page = 2
                    } label: {
                        Image(systemName: "person.fill")
                    }
                }
            }
        }
    }
}
