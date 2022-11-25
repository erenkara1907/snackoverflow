//
//  OnboardView.swift
//  SnackOverFlow
//
//  Created by Eren Kara on 22.11.2022.
//

import SwiftUI

struct OnboardView: View {
    
    @StateObject var onboardViewModel: OnboardViewModel = OnboardViewModel()
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    TabView(selection: $onboardViewModel.currentIndex,
                            content: {
                        ForEach((0...OnboardModel.items.count - 1), id: \.self) { value in
                            SliderCard(imageHeight: geometry.dynamicHeight(height: 0.45), model: OnboardModel.items[value])
                        } // ForEach
                    }) // TabView
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(height: geometry.dynamicHeight(height: 0.6))
                    
                    Spacer()
                    HStack {
                        ForEach((0...2), id: \.self) { index in
                            if(index == onboardViewModel.currentIndex) {
                                IndicatorRectangle(width: geometry.dynamicWidth(width: 0.06))
                                    .foregroundColor(.colorClooney)
                            } else {
                                IndicatorRectangle(width: geometry.dynamicWidth(width: 0.02))
                                    .foregroundColor(.colorClooney).opacity(0.5)
                            }
                        }
                    } // HStack
                    .frame(height: geometry.dynamicHeight(height: 0.01))
                    
                    NavigationLink(isActive: $onboardViewModel.isWelcomeRedirect) {
                        WelcomeView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        NormalButton(onTap: {
                            onboardViewModel.saveUserLoginAndRedirect()
                        }, title: LocaleKeys.Button.getStarted.rawValue)
                            .padding(.all, 16.0)
                    } // NavigationLink
                    .onAppear {
                        onboardViewModel.checkUserFirstTime()
                    }
                } // VStack
            } // GeometryReader
        } // NavigationView
    }
}

private struct SliderCard: View {
    var imageHeight: Double
    var model: OnboardModel
    
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .frame(height: imageHeight)
            Text(model.description)
                .font(.system(size: FontSizes.largeTitle,weight: .semibold))
                .multilineTextAlignment(.center)
                .frame(alignment: .center)
                .foregroundColor(.colorPeach)
        } // VStack
    }
}

private struct IndicatorRectangle: View {
    var width: Double
    
    var body: some View {
        Rectangle()
            .cornerRadius(RadiusItems.radius)
            .frame(width: width)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
