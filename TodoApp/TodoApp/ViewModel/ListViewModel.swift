//
//  ListViewModel.swift
//  TodoApp
//
//  Created by Rapipay on 11/04/23.
//

import Foundation
class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItem()
        }
    }
    
    let itemskey: String = "items_list"
    init() {
        getItems()
    }
    func getItems() {
//        let newItem = [
//        ItemModel(title: "task 1", isCompleted: true),
//        ItemModel(title: "Task2", isCompleted: false),
//        ItemModel(title: "Task3", isCompleted: false)
//        ]
//        items.append(contentsOf: newItem)
        guard let data = UserDefaults.standard.data(forKey: itemskey) else { return }
        guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
        self.items = savedItems
    }
    func deleteItem(index: IndexSet){
        items.remove(atOffsets: index)
    }
    func moveData(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItems(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        self.items.append(newItem)
        self.getItems()
    }
    func updateItems(item: ItemModel) {
       if let index = items.firstIndex(where: {$0.id == item.id}) {
           items[index] = item.updating()
//            items[index] = ItemModel(title: item.title, isCompleted: !item.isCompleted)
        }
    }
    
    func saveItem() {
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemskey)
        }
//            if successful jsonencoder is created that converts things into jason data, item array will convert into json data
        
    }
}
	
