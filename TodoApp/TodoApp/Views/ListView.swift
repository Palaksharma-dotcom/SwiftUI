//
//  ListView.swift
//  TodoApp
//
//  Created by Rapipay on 10/04/23.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        VStack{
            if listViewModel.items.count == 0{
                //              Text("empty folder")
                NoItem()
            }
            List{
                ForEach(listViewModel.items){ item in
                    ListRowView(item: item)
                        
                        .onTapGesture {
                            withAnimation(.linear){
                                listViewModel.updateItems(item: item)
                            }            
                        }
                }
                .onDelete(perform:
                            listViewModel.deleteItem
                          //                index in items.remove(atOffsets: index)
                )
                .onMove(perform: listViewModel.moveData)
            }
//            .refreshable {
//                listViewModel.getItems()
//            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List")
            .navigationBarItems(leading: EditButton(),
                                trailing: NavigationLink("ADD", destination: AddView(listViewModel: ListViewModel())))
            
                }.onAppear {
                    listViewModel.getItems()
                    print(listViewModel.items.count)
                }
    }
   
    
}

//struct ListView_Previews: PreviewProvider {
//    static var previews:/Users/rapipay/Documents/TodoApp/TodoApp/Views/ListView.swift some View {
//        NavigationView{
//            ListView()
//        }
//        .environmentObject(ListViewModel())
//    }
//}


//ListViewModel-> Object
