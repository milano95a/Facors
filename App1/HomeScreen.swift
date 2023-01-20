//
//  ContentView.swift
//  App1
//
//  Created by Workspace on 18/01/23.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var label = "Muhammad Ali's happines factors"
    
    @State private var factorOneLabel = "HEALTH"
    @State private var factorOneScore = 10.0
    
    @State private var factorTwoLabel = "SOCIAL"
    @State private var factorTwoScore = 10.0
    
    @State private var factorThreeLabel = "FAMILY"
    @State private var factorThreeScore = 10.0
    
    @State private var factorFourLabel = "MONEY"
    @State private var factorFourScore = 10.0
    
    @State private var factorFiveLabel = "SOMETHING"
    @State private var factorFiveScore = 10.0
    
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text(label)
                    .foregroundColor(.blue)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                
                Spacer()
                
                HStack(alignment: .bottom) {
                    VStack {
                        ForEach(0...Int(factorOneScore), id: \.self) {_ in 
                            Image(systemName: "circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                        }    
                        Image(systemName: "square.fill")
                            .foregroundColor(.accentColor)
                            .imageScale(.large)
                    }
                    VStack {
                        Image(systemName: "square.fill")
                            .foregroundColor(.accentColor)
                            .imageScale(.large)
                    }
                    VStack {
                        ForEach(0...Int(factorTwoScore), id: \.self) { _ in
                            Image(systemName: "circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                        }
                        Image(systemName: "square.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    }
                    VStack {
                        Image(systemName: "square.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    }
                    VStack {
                        ForEach(0...Int(factorThreeScore), id: \.self) { _ in
                            Image(systemName: "circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                        }
                        Image(systemName: "square.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    }
                    VStack {
                        Image(systemName: "square.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    }
                    VStack {
                        ForEach(0...Int(factorFourScore), id: \.self) { _ in
                            Image(systemName: "circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                        }
                        Image(systemName: "square.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    }
                    VStack {
                        Image(systemName: "square.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    }
                    VStack {
                        ForEach(0...Int(factorFiveScore), id: \.self) { _ in
                            Image(systemName: "circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.blue)
                        }
                        Image(systemName: "square.fill")
                            .imageScale(.large)
                            .foregroundColor(.blue)
                    }
                }
                
                Text("")
                
                HStack (alignment: .top) {
                    VStack {
                        ForEach(0..<factorOneLabel.count, id: \.self) { index in
                            Text(factorOneLabel.charAt(index))
                        }
                    }
                    VStack {
                        Text("         ")
                    }
                    VStack {
                        ForEach(0..<factorTwoLabel.count, id: \.self) { index in
                            Text(factorTwoLabel.charAt(index))
                        }
                    }
                    VStack {
                        Text("         ")
                    }
                    VStack {
                        ForEach(0..<factorThreeLabel.count, id: \.self) { index in
                            Text(factorThreeLabel.charAt(index))
                        }
                    }
                    VStack {
                        Text("         ")
                    }
                    VStack {
                        ForEach(0..<factorFourLabel.count, id: \.self) { index in
                            Text(factorFourLabel.charAt(index))
                        }
                    }
                    VStack {
                        Text("         ")
                    }
                    VStack {
                        ForEach(0..<factorFiveLabel.count, id: \.self) { index in
                            Text(factorFiveLabel.charAt(index))
                        }
                    }
                }.foregroundColor(.blue)
                
                Spacer()
                
                Button("⚙️") {
                    showingSheet.toggle()
                }.sheet(isPresented: $showingSheet) {
                    SheetScreen()
                }
            }
        }
        .padding()
        .onAppear(perform: load)
    }
    
    func load() {
        label = MyUserDefaults.title
        factorOneLabel = MyUserDefaults.factorOneLabel
        factorOneScore = MyUserDefaults.factorOneScore
        factorTwoLabel = MyUserDefaults.factorTwoLabel
        factorTwoScore = MyUserDefaults.factorTwoScore
        factorThreeLabel = MyUserDefaults.factorThreeLabel
        factorThreeScore = MyUserDefaults.factorThreeScore
        factorFourLabel = MyUserDefaults.factorFourLabel
        factorFourScore = MyUserDefaults.factorFourScore
        factorFiveLabel = MyUserDefaults.factorFiveLabel
        factorFiveScore = MyUserDefaults.factorFiveScore
    }
}

struct SheetScreen: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var title = ""
    @State private var factorOneLabel = ""
    @State private var factorOneScore = 0.0
    
    @State private var factorTwoLabel = ""
    @State private var factorTwoScore = 0.0
    
    @State private var factorThreeLabel = ""
    @State private var factorThreeScore = 0.0
    
    @State private var factorFourLabel = ""
    @State private var factorFourScore = 0.0
    
    @State private var factorFiveLabel = ""
    @State private var factorFiveScore = 0.0
    
    private let defaults = UserDefaults.standard
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Title", text: $title)
                    .font(.title)
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                Group {
                    TextField("Factor 1", text: $factorOneLabel)
                    Slider(
                        value: $factorOneScore, 
                        in: 0...10, 
                        step: 1) {
                            Text("")
                        } minimumValueLabel: {
                            Text("0")
                        } maximumValueLabel: {
                            Text("10")
                        }
                    Text("\(Int(factorOneScore))")
                }
                
                Group {
                    TextField("Factor 2", text: $factorTwoLabel)
                    Slider(value: $factorTwoScore,
                           in: 0...10,
                           step: 1,
                           label: { Text("")}, 
                           minimumValueLabel: { Text("0") }, 
                           maximumValueLabel: { Text("10") } )
                    Text("\(Int(factorTwoScore))")
                }
                
                Group {
                    TextField("Factor 3", text: $factorThreeLabel)
                    Slider(value: $factorThreeScore, 
                           in: 0...10,
                           step: 1,
                           label: { Text("") }, 
                           minimumValueLabel: { Text("0") }, 
                           maximumValueLabel: { Text("10") })
                    Text("\(Int(factorThreeScore))")
                }
                
                Group {
                    TextField("Factor 4", text: $factorFourLabel)
                    Slider(value: $factorFourScore, 
                           in: 0...10, 
                           step: 1,
                           label: { Text("") }, 
                           minimumValueLabel: { Text("0") }, 
                           maximumValueLabel: { Text("10") })
                    Text("\(Int(factorFourScore))")
                }
                
                Group {
                    TextField("Factor 5", text: $factorFiveLabel)
                    Slider(value: $factorFiveScore, 
                           in: 0...10, 
                           step: 1,
                           label: { Text("") }, 
                           minimumValueLabel: { Text("0") }, 
                           maximumValueLabel: { Text("10") })
                    Text("\(Int(factorFiveScore))")
                }
                
                Spacer()
                Button("❌") {
                    save()
                    dismiss()
                }            
            }
        }
        .padding()
        .onAppear(perform: load)
    }
    
    func save() {
        MyUserDefaults.title = title
        MyUserDefaults.factorOneLabel = factorOneLabel
        MyUserDefaults.factorOneScore = factorOneScore
        MyUserDefaults.factorTwoLabel = factorTwoLabel
        MyUserDefaults.factorTwoScore = factorTwoScore
        MyUserDefaults.factorThreeLabel = factorThreeLabel
        MyUserDefaults.factorThreeScore = factorThreeScore
        MyUserDefaults.factorFourLabel = factorFourLabel
        MyUserDefaults.factorFourScore = factorFourScore
        MyUserDefaults.factorFiveLabel = factorFiveLabel
        MyUserDefaults.factorFiveScore = factorFiveScore
    }
    
    func load() {
        title = MyUserDefaults.title
        factorOneLabel = MyUserDefaults.factorOneLabel
        factorOneScore = MyUserDefaults.factorOneScore
        factorTwoLabel = MyUserDefaults.factorTwoLabel
        factorTwoScore = MyUserDefaults.factorTwoScore
        factorThreeLabel = MyUserDefaults.factorThreeLabel
        factorThreeScore = MyUserDefaults.factorThreeScore
        factorFourLabel = MyUserDefaults.factorFourLabel
        factorFourScore = MyUserDefaults.factorFourScore
        factorFiveLabel = MyUserDefaults.factorFiveLabel
        factorFiveScore = MyUserDefaults.factorFiveScore
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

extension String {
    func charAt(_ index: Int) -> String {
        for (i,char) in self.enumerated() {
            if i == index { return String(char) } 
        }
        return ""
    }
}
