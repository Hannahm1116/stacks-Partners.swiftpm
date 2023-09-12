import SwiftUI

struct ExampleView: View
{
  @State private var selectedView = 0
  private let pickerOptions = ["Calculator", "Shapes"]
  
  var body: some View {
    VStack {
      
      Divider()
       
      Picker(selection: $selectedView, label: Text("")) {
        ForEach(0..<pickerOptions.count) {
          Text(self.pickerOptions[$0])
        } //: ForEach
      } //: Picker
      .pickerStyle(SegmentedPickerStyle())
      .padding()
      
      if selectedView == 0
      {
          
          CalculatorView()
      }
      else if selectedView == 1
      {
          ShapesView()
      }
    }
  }
}
