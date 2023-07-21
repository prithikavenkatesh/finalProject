//
//  NewItemView.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/21/23.
//

// light beige color: Color(red: 246/255, green: 240/255, blue: 214/255))
// dark beige color:  Color(red: 149/255, green: 214/255, blue: 255/255))

import SwiftUI

struct NewItemView: View {
    
    @Environment(\.managedObjectContext) var context
    @State var title :String
    @State var dueDate = Date()
    
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            
            Text("New Item")
                .font(.system(size: 42))
                .bold()
            Form {
                Text("Enter the food you are logging:")
                // Title
                TextField("title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                //Button
                FLButton(
                    title: "Save",
                    background: .blue
                ){
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                
                .padding()
            }
            
           // .alert(isPresented:$viewModel.showAlert) {
           //     Alert(title: Text("Error"),
          //          message: Text("Please fill in all fields and select a due date that is today or newer.")
               // )
          //  }
            
            
    
            
            }
        }
    private func addTask(title: String, dueDate: Date){
        let food = ExpirationDate(context: context)
        food.id = UUID()
        food.title = title
        food.dueDate = dueDate
        
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
}



struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(title: "",
                    newItemPresented: Binding(get: {
            return true
        }, set: { _ in
            
        }))
    }
}
