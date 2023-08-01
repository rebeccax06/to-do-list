//
//  ContentView.swift
//  to do list
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @State var toDoItems : [ToDoItem] = []
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(.largeTitle)
                }
                
            }
            .padding()
            
            List {
                ForEach (toDoItems) {ToDoItem in
                    if ToDoItem.isImportant{
                        Text("‼️" + ToDoItem.title)
                    } else {
                        Text(ToDoItem.title)
                    }
                    }
            }
            .listStyle(.plain)
            
           Spacer()
        }
        .padding()
        
        if showNewTask{
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
                .transition(AnyTransition.opacity.animation(.easeInOut(duration: 1.0)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
