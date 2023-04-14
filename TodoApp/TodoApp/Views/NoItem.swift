//
//  NoItem.swift
//  TodoApp
//
//  Created by Rapipay on 12/04/23.
//

import SwiftUI

struct NoItem: View {
    @State var btntitle = "Add Items"
    @State var isActive: Bool = false
//    var action = NavigationLink("", destination: AddView())
    var body: some View {
        ScrollView{
            Text("Hello")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .font(.title2)
                .fontWeight(.semibold)
            Text("no items present in todo list")
                .font(.headline)
                .fontWeight(.medium)
//
//            NavigationLink(<#LocalizedStringKey#>, destination: AddView(listViewModel: ListViewModel())
            NavigationLink(destination: AddView(listViewModel: ListViewModel()), isActive: $isActive){
                //            {
                CustomButton(btnAction: {
                    isActive = true
                },
                             btntitle: "Add Items")
            }
//                Text("Add Items")
//                      .foregroundColor(.white)
//                      .frame(height: 45)
//                      .frame(maxWidth: .infinity)
//                      .background(Color.blue)
//                      .cornerRadius(10)
//            }
            
//
                
//            Button(action: {
//                NavigationLink("", destination: AddView())
//            },
//                   label: {
//                Text("Add Items")
//                    .foregroundColor(.white)
//                    .frame(height: 45)
//                    .frame(maxWidth: .infinity)
//                    .background(Color.blue)
//                    .cornerRadius(10)
//
//
//            }
//            )
//            .navigationTitle("Todo list")
//            .navigationBarItems(trailing: NavigationLink("", destination: AddView()))
        }
      
       
    }
//    func navigate() {
////        NavigationLink("", destination: AddView( listViewModel: ListViewModel()))
//
//    }
}

struct NoItem_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView{
            NoItem()
//        }
    }
}
