//
//  ContentView.swift
//  gapp
//
//  Created by Aidan Griffin on 4/22/22.
//

import SwiftUI

// below is the entirety of the code used to display whats on the preview. Glucose Now

public var caloriesShared = 0


struct ContentView: View {
    

    @State private var selection: String? = nil
    @State var calDisplay: Int = 0
    @State var exDisplay: Int = 0
    @State var meDisplay: Int = 0

    
    var logbuttonnames = ["Log Food", "Log Exercise", "Take Measurement"]
    let date = Date()
    

    var body: some View {
        

        NavigationView
        {
            VStack{
            HomeView(calories: $calDisplay, exerciseHours: $exDisplay)
                .navigationTitle("GlucoseNow")
                .navigationBarTitleDisplayMode(.inline)

                
                VStack{
                    
                    NavigationLink(destination: logFood(calDisplay: $calDisplay), label: {
                            Text("Log Food")
                                .font(.title)
                                .frame(width: 350, height: 80)
                                .background(Color.green)
                                .cornerRadius(10)

                        })
                    NavigationLink(destination: logExercise(exerciseDisplay: $exDisplay), label: {
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
            
        }.ignoresSafeArea(.all)

      
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
 

public struct Food: Identifiable {
    public var id = UUID()
    let name: String
    let numcalories: String
    let key: Int
}

struct foodRow: View{
    var food: Food
    
    var body: some View{
        HStack{
            if(food.key == 1)
            {
            Spacer()
        Text("Food: ")
            .fontWeight(.bold)
        Text("\(food.name)")
        Text("Calories: ")
            .fontWeight(.bold)
        Text(" \(food.numcalories)")
            Spacer()
            }
            else if(food.key == 0)
            {
            Spacer()
                Text("Previously Logged Foods")
                    .fontWeight(.bold)
            Spacer()
            }
        }
    }
}


public var foods = [
    Food(name: "Example", numcalories: "000", key: 0)
]



//logFood()
struct logFood: View{
    
    @State var fooditem = ""
    @State var calories = ""
    @State var calorietotal = ""
    @State var caloriesInt = 0
    @Binding var calDisplay: Int
        

    var body : some View{
        
        VStack(alignment: .leading){
                      
            HStack{
                Spacer()
            Text("Today's Calorie Total:")
                Text("\(calDisplay)")
                Spacer()
            }
            TextField("Food Item", text: $fooditem)
                .padding()
                .textFieldStyle(.roundedBorder)
            TextField("Calories", text: $calories)
                .padding()
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
            
            Button(action: submitFood)
            {
                Text("Submit")
            }
            
            List(foods){ food in
                foodRow(food: food)
            }
            
        }
        .navigationTitle("Log Food")

    }
    
    func submitFood()
    {
        print("The number of calories = \(calories)")
        let x = Int( calories ) ?? 0
        caloriesInt += x
               
        let item = Food(name: fooditem, numcalories: calories, key: 1)
        foods.append(item)
        
//        caloriesInt = caloriesShared
        calDisplay = caloriesInt
        
        print("\(caloriesInt)")

        
        
            }
}

public struct Exercise: Identifiable {
    public var id = UUID()
    let exercisename: String
    let hours: String
    let calsBurned: String
    let key: Int
}

struct exerciseRow: View{
    var exercise: Exercise
    
    var body: some View{
        HStack{
            if(exercise.key == 1)
            {
            Spacer()
        Text("Exercise: ")
            .fontWeight(.bold)
        Text("\(exercise.exercisename)")
        Text("Time: ")
            .fontWeight(.bold)
        Text("\(exercise.hours) h")
//        Text("Calories Burned: ")
//            .fontWeight(.bold)
//        Text(" \(exercise.calsBurned)")
            Spacer()
            }
            else if(exercise.key == 0)
            {
            Spacer()
                Text("Previously Logged Exercises")
                    .fontWeight(.bold)
            Spacer()
            }
        }
    }
}


public var exercises = [
    Exercise(exercisename: "example", hours: "0", calsBurned: "0", key: 0)
]



//logFood()
struct logExercise: View{
    
    @State var exercise = ""
    @State var hours = ""
    @State var hoursInt = 0
    @State var caloriesburned = ""
    @State var caloriesburnedInt = 0
    @Binding var exerciseDisplay: Int
        

    var body : some View{
        
        VStack(alignment: .leading){
                      
            HStack{
                Spacer()
            Text("Today's Exercise Total:")
                if(exerciseDisplay < 60) //display time under an hour.
                {
                    Text("\(exerciseDisplay)")
                    Spacer()
                }
                else{
                    let hourVal = exerciseDisplay / 60
                    let minutesVal = exerciseDisplay % 60
                    
                    Text("\(hourVal) h \(minutesVal) m")
                    Spacer()
                }
                
            }
            TextField("Exercise", text: $exercise)
                .padding()
                .textFieldStyle(.roundedBorder)
            TextField("Minutes", text: $hours)
                .padding()
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
            TextField("Calories Burned", text: $caloriesburned)
                .padding()
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
            
            Button(action: submitExercise)
            {
                Text("Submit")
                    .multilineTextAlignment(.center)
            }
            
            
            List(exercises){ exercise in
                exerciseRow(exercise: exercise)
            }
            
        }
        .navigationTitle("Log Exercise")

    }
    
    func submitExercise()
    {
        print("The number of hours = \(hours) h")
        let x = Int( hours ) ?? 0
        hoursInt += x
               
        let item = Exercise(exercisename: exercise, hours: hours, calsBurned: caloriesburned, key: 1)
        exercises.append(item)
        
        exerciseDisplay = hoursInt
            }
}


struct logBloodSugar: View{ //aka stoorbloodsugar
    
    @State var bloodsugar: String = ""
    
    var body: some View{
        VStack(alignment: .leading){
            TextField("Enter your blood sugar: ", text: $bloodsugar)
            Text(bloodsugar)
                .navigationTitle("Log Blood Sugar")

        }
    }
}

struct logWeight: View{ //aka stoorbloodsugar
    
    @State var weight: String = ""
    
    var body: some View{
        VStack(alignment: .leading){
            TextField("Enter your weight: ", text: $weight)
            Text(weight)
                .navigationTitle("Log Weight")
            
        }
    }
}



struct HomeView: View{
    
    @Binding var calories: Int
    @Binding var exerciseHours: Int

    let date = Date()
    
    var body : some View{
        
        VStack{
            
     Text(date, style: .date)
            
            Spacer()
                        
            CalorieView(calories: $calories)
            ExerciseView(exercise: $exerciseHours)
            GlucoseView()
            
            Spacer()
        
    
        }
    }
    
}

                                
                                     
                                
struct CalorieView: View{
    
    @Binding var calories: Int
    
    var body: some View
    {
        
        HStack{
            VStack{
                Text("Calories:")
                    .font(.title2)
                Text("\(calories)")
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
    
    @Binding var exercise: Int
    
    var body: some View
    {
        Spacer()
        
        HStack{
            VStack{
                Text("Exercise:")
                    .font(.title2)
                Text("\(caloriesShared)")
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
                Text("000")
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
        Group {
            ContentView()
                .previewDevice("iPhone 12")
            .previewInterfaceOrientation(.portrait)
         
        }
    }
}
