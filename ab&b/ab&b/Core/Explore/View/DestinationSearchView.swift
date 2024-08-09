//
//  DestinationSearchView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI

enum DestinationSearchOptions
{
    case location
    case dates
    case guests
} // end enum

struct DestinationSearchView: View
{
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    var body: some View
    {
        VStack
        {
            HStack 
            {
                Button{
                    withAnimation(.snappy){
                        viewModel.updateListingsForLoaction()
                        show.toggle()
                    }
                } label:{
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
            }
                Spacer()
                
                if !viewModel.searchLocation.isEmpty
                {
                    Button("Clear"){
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLoaction()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            } // end hstack
            .padding()

            VStack(alignment: .leading)
            {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack
                    {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLoaction()
                                show.toggle()
                            }
                            
                    }// end hstack
                    .frame(height:44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                    
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
                
            } // end vstack
            .modifier(CollapsableDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location }
            }
            
            // date selection view
            VStack(alignment: .leading)
            {
                if selectedOption == .dates {
                    Text("When is your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack
                    {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsableDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates }
            }
            
            
            //number of guets view
            VStack(alignment: .leading)
            {
                if selectedOption == .guests {
                    Text("Who is coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper
                    {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }
                    
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsableDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
            }
            
            Spacer()
            
        } // end vstack
    } // end body
} // end struct

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsableDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack
        {
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        } // end vstack
    }
}
