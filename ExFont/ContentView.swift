//
//  ContentView.swift
//  ExFont
//
//  Created by Jake.K on 2022/07/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      VStack {
        Text("bold")
          .font(.system(size: 15, weight: .bold))
        Text("semibold")
          .font(.system(size: 15, weight: .semibold))
        Text("heavy")
          .font(.system(size: 15, weight: .heavy))
        Text("light")
          .font(.system(size: 15, weight: .light))
        Text("medium")
          .font(.system(size: 15, weight: .medium))
        Text("regular")
          .font(.system(size: 15, weight: .regular))
        Text("thin")
          .font(.system(size: 15, weight: .thin))
        Text("ultraLight")
          .font(.system(size: 15, weight: .ultraLight))
        Text("black")
          .font(.system(size: 15, weight: .black))
      }
      Divider()
      VStack {
        Text(".default")
          .font(.system(size: 15, weight: .black, design: .default))
        Text(".monospaced")
          .font(.system(size: 15, weight: .black, design: .monospaced))
        Text(".rounded")
          .font(.system(size: 15, weight: .black, design: .rounded))
        Text(".serif")
          .font(.system(size: 15, weight: .black, design: .serif))
      }
      Divider()
      VStack {
        Text(".default")
          .font(.system(size: 15, weight: .black, design: .default))
        Text(".monospaced")
          .font(.system(size: 15, weight: .black, design: .monospaced))
        Text(".rounded")
          .font(.system(size: 15, weight: .black, design: .rounded))
        Text(".serif")
          .font(.system(size: 15, weight: .black, design: .serif))
      }
      Divider()
      VStack {
        Text(".largeTitle")
          .font(.system(.largeTitle))
        Text(".title")
          .font(.system(.title))
        Text(".title2")
          .font(.system(.title2))
        Text(".title3")
          .font(.system(.title3))
        Text(".headline")
          .font(.system(.headline))
        Text(".subheadline")
          .font(.system(.subheadline))
        Text(".body")
          .font(.system(.body))
        Text(".callout")
          .font(.system(.callout))
        VStack { // 하나의 VStack에 10개가 넘어가면 컴파일 에러가 발생하므로 VSTack 하나 더 사용
          Text(".footnote")
            .font(.system(.footnote))
          Text(".caption")
            .font(.system(.caption))
          Text(".caption2")
            .font(.system(.caption2))
        }
      }
      Divider()
      VStack {
        Text("baselineOffset(0)")
          .baselineOffset(0)
          .background(.red)
        Text("baselineOffset(10)")
          .baselineOffset(10)
          .background(.green)
        Text("baselineOffset(-10)")
          .underline()
          .baselineOffset(-10)
          .background(.blue)
      }
      VStack {
        Text(".tracking(10)")
          .tracking(10)
        Text(".kerning(10)")
          .kerning(10)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(ColorScheme.allCases, id: \.self) {
      ContentView().preferredColorScheme($0)
    }
  }
}
