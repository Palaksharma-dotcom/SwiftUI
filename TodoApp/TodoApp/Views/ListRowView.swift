//
//  ListRowView.swift
//  TodoApp
//
//  Created by Rapipay on 10/04/23.
//

import SwiftUI

struct ListRowView: View {
//    var title: String
    let item: ItemModel
    var body: some View {
        HStack{
            
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            
               
            Text(item.title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "hdjchdh", isCompleted: true)
    static var previews: some View {
        ListRowView(item: item1)
    }
}
