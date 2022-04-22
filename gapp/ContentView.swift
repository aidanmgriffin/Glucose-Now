//
//  ContentView.swift
//  gapp
//
//  Created by Aidan Griffin on 4/22/22.
//

import SwiftUI

// below is the entirety of the code used to display whats on the preview. Glucose Now
struct ContentView: View {
    
    
    @State private var selection: String? = nil
    
    var logbuttonnames = ["Log Food", "Log Exercise", "Take Measurement"]
    let date = Date()
    
    var body: some View {
        
        NavigationView
        {
            VStack{
            HomeView()
                .navigationTitle("GlucoseNow")
                .navigationBarTitleDisplayMode(.inline)
                

                VStack{
                    
                        NavigationLink(destination: logFood(), label: {
                            Text("Log Food")
                                .font(.title)

                                .frame(width: 350, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)

                        })
                    NavigationLink(destination: Text("buttonindex"), label: {
                        Text("Log Exercise")
                            .font(.title)

                            .frame(width: 350, height: 80)
                            .background(Color.green)
                            .cornerRadius(10)

                    })
                    NavigationLink(destination: Text("buttonindex"), label: {
                        Text("Take Measurement")
                            .font(.title)

                            .frame(width: 350, height: 80)
                            .background(Color.green)
                            .cornerRadius(10)

                    })
                    }
                
                .foregroundColor(.black)

                Spacer()
                Spacer()

                HStack{
                    account
                    reportview
                    help

                }

             
            }
        }
    }
    var reportview: some View {
        Button(action: {}, label: {
        Text("Report View")
            .padding(.horizontal)
        })
    }
    var account: some View{
        Button(action: {}, label: {
        Image(systemName: "person.circle")
        })
    }
    var help: some View {
        Button(action: {}, label: {
        Image(systemName: "questionmark.circle")
        })
    }
    
}
 
class Results{
    var calories = 0
    var exercise = 0
    var bsugar = 0
}

//logFood()
struct logFood: View{
    
    @State var calories: String = ""
    
    var body : some View{
        VStack(alignment: .leading){
            TextField("Enter the number of calories: ", text: $calories)
            Text(calories)
        }
    }
}

struct logExercise: View{ //aka storeExerciseData
    
    @State var exercise: String = ""
    
    var body: some View{
        VStack(alignment: .leading){
            TextField("Enter the time spent exercising: ", text: $exercise)
            Text(exercise)
        }
    }
}

struct logBloodSugar: View{ //aka stoorbloodsugar
    
    @State var bloodsugar: String = ""
    
    var body: some View{
        VStack(alignment: .leading){
            TextField("Enter your blood sugar: ", text: $bloodsugar)
            Text(bloodsugar)
        }
    }
}

struct logWeight: View{ //aka stoorbloodsugar
    
    @State var weight: String = ""
    
    var body: some View{
        VStack(alignment: .leading){
            TextField("Enter your weight: ", text: $weight)
            Text(weight)
        }
    }
}



struct HomeView: View{
    

    let date = Date()
    
    var body : some View{
        
        VStack{
            
     Text(date, style: .date)
            
            Spacer()
                        
            CalorieView()
            ExerciseView()
            GlucoseView()
            
            Spacer()
        
    
        }
    }
    
}

                                
                                     
                                
struct CalorieView: View{
    
    var body: some View
    {
        
        HStack{
            VStack{
                Text("Calories:")
                    .font(.title2)
                Text("534")
                    .font(.title3)
            }
            
            Spacer()
            
            Text("ChartHere")
        }
        .padding(.horizontal)
        
        Spacer()
    
    }
}

struct ExerciseView: View{
    
    var body: some View
    {
        Spacer()
        
        HStack{
            VStack{
                Text("Exercise:")
                    .font(.title2)
                Text("2H")
                    .font(.title3)
            }
            
            Spacer()
            
            Text("ChartHere")
        }
        .padding(.horizontal)
        
        Spacer()
    
    }
}

struct GlucoseView: View{
    
    var body: some View
    {
        Spacer()
        
        HStack{
            VStack{
                Text("Glucose:")
                    .font(.title2)
                Text("13")
                    .font(.title3)
            }
            
            Spacer()
            
            Text("ChartHere")
        }
        .padding(.horizontal)
        
        Spacer()
    
    }
}
  
struct CardView: View{
    var ButtonName: String
    @State var isClicked: Bool = false
    
    var body: some View{
        ZStack {
            
        let shape = RoundedRectangle(cornerRadius: 20)
            
            if isClicked{
                shape.stroke(lineWidth: 3)
                shape.fill().foregroundColor(Color(hue: 1.0, saturation: 0.002, brightness: 0.904))
            Text(ButtonName)
                .font(.title)
            }
            else{
                shape.stroke(lineWidth: 3)
                shape.fill().foregroundColor(.white)
            Text(ButtonName)
                .font(.title)
                
            }
        }
        .onTapGesture{
           // isClicked = !isClicked
        }

    }
}












    
    
    
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
            .previewInterfaceOrientation(.portrait)
    }
}
