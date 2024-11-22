//
//  FactsView.swift
//  5A-Spirit-Quiz
//
//  Created by Improve on 25.10.2024.
//

import SwiftUI

struct FactsViewNQ: View {
    @State var timer: Timer?
    @State var selectedFact: FactNQ? = facts.randomElement()!
    @State var showSheet = false
    
    var ehngfjmr = "rfc3"
    var hbnegvcfjmk = 35
    func ghtrfjk() -> String {
        return "uhnefrijmko"
    }
    func rj4nufm() {
        print("gnmfr")
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 22, weight: .regular, color: .hex("55E4A2"))
                                .padding(.top, 12)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 18.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("63E695"))
                    .padding(.top, 12)
                
                Text(fact.content)
                    .withFont(size: 19.5, weight: .thin)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("63E695"))
                    
                    Rectangle()
                        .foregroundColor(.hex("2A2740"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.hex("2A2740")
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    ContentViewNQ(showLoading: false, selectedTab: .facts)
}


struct FactNQ {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactNQ] = [
    FactNQ(title: "The Sun's Massive Size", content: "The Sun is truly gigantic, accounting for over 99% of the mass in the entire Solar System. It is so massive that more than a million Earths could fit inside it. The Sun's core reaches temperatures of about 15 million degrees Celsius, which drives nuclear fusion, where hydrogen atoms merge into helium, releasing energy that powers everything from the smallest plants to the largest weather systems on Earth. This process has been ongoing for around 4.6 billion years and will continue for billions more. The Sun's gravity holds planets, asteroids, and comets in orbit, essentially making it the anchor of our solar neighborhood."),
    FactNQ(title: "Sharks Lack Bones", content: "Sharks are unique in that their skeletons contain no bones, only cartilage. This flexible structure gives them a lightweight, streamlined build that allows for incredible agility and speed in the water. Cartilage also helps absorb impact, essential for their high-speed hunting lifestyle. Sharks have existed for around 400 million years, surviving mass extinctions and adapting to diverse marine environments. Today, their cartilaginous bodies are not only fascinating to scientists but also contribute to their efficiency as some of the ocean's top predators."),
    FactNQ(title: "The Moon Drifts Away", content: "The Moon is gradually moving away from Earth at a rate of approximately 3.8 centimeters per year. This is due to gravitational interactions between Earth and the Moon, which create tidal forces that push the Moon outward. This slow but steady drift affects Earth's rotation, gradually lengthening our days. Over millions of years, these changes have significantly impacted the Earth-Moon relationship, altering tides and influencing life on Earth. The Moon's distance has been measured with great accuracy by bouncing laser beams off retroreflectors left on its surface by the Apollo missions."),
    FactNQ(title: "Brain Energy Consumption", content: "The human brain, though only about 2% of our body weight, uses an astonishing 20% of our energy intake. This high energy consumption is necessary to fuel the brain's vast network of neurons, which communicate through electrical impulses to perform complex functions. The brain constantly processes sensory information, controls bodily movements, stores memories, and allows for thoughts and emotions. Even at rest, the brain's activity remains high, making it one of the most energy-demanding organs in the body."),
    // Add the remaining new facts from the provided list here...
    FactNQ(title: "Water on Mars", content: "Scientists have found evidence of water ice and possibly liquid brine on Mars, offering clues about past and potential future habitability. Traces of ancient river valleys and lakebeds indicate that liquid water once flowed on Mars, creating conditions that might have supported microbial life. The discovery of water on Mars has significant implications for future human exploration, as it could be a vital resource for sustaining astronauts and growing food."),
    FactNQ(title: "Star Death and Rebirth", content: "When massive stars reach the end of their lives, they explode in a supernova, dispersing elements such as carbon, oxygen, and iron into space. These materials become part of the interstellar medium, where new stars, planets, and even life can form. This cycle of star death and rebirth is essential to the universe, as elements formed in supernovae are the building blocks of planets and life as we know it. Each element on Earth was forged in the heart of a star, making us all, in a sense, stardust."),
    FactNQ(title: "Octopus' Three Hearts", content: "Octopuses are fascinating creatures with three hearts. Two pump blood to the gills, while the third pumps it to the rest of the body. Interestingly, the heart that supplies the body stops beating when the octopus swims, which is why these animals prefer crawling to conserve energy."),
       FactNQ(title: "Earth's Magnetic Pole Movement", content: "The Earth's magnetic north pole is not fixed and has been moving over time. Currently, it shifts at a rate of around 55 kilometers per year toward Siberia. This movement is due to changes in the Earth's molten outer core, which generates the magnetic field."),
       FactNQ(title: "Sloths' Slow Metabolism", content: "Sloths are known for their incredibly slow metabolism, which allows them to survive on a diet of leaves. It takes a sloth about a month to digest a single meal. Their slow metabolism also contributes to their low energy lifestyle and limited movement."),
       FactNQ(title: "Birds See UV Light", content: "Many bird species can see ultraviolet light, which is invisible to humans. This ability helps them find food, choose mates, and even navigate. For example, certain fruits and berries reflect UV light, making them easier to spot."),
       FactNQ(title: "Jellyfish Have No Brain", content: "Jellyfish are unique animals that lack a brain, heart, and lungs. They rely on a nerve net to detect changes in their environment and coordinate movement. Despite their simplicity, jellyfish have thrived in oceans for over 500 million years."),
       FactNQ(title: "Amazon Produces 20% Oxygen", content: "The Amazon Rainforest is often called the 'lungs of the Earth' because it produces about 20% of the world's oxygen. However, the forest also consumes nearly the same amount during respiration, highlighting its role as a vital carbon sink."),
       FactNQ(title: "Antarctica's Dry Valleys", content: "Antarctica is home to the McMurdo Dry Valleys, one of the driest places on Earth, where it hasn't rained for nearly 2 million years. These valleys are so arid that scientists study them to understand conditions on Mars."),
       FactNQ(title: "Whales Sing Complex Songs", content: "Humpback whales are known for their complex and haunting songs, which can travel great distances underwater. These songs are thought to play a role in communication and mating, with males often singing during breeding seasons."),
       FactNQ(title: "Saturn's Rings are Temporary", content: "Saturn's iconic rings are made of ice and rock particles, but they are not permanent. Scientists estimate that the rings are gradually disappearing as the material falls into the planet's atmosphere, a process known as 'ring rain.'"),
       FactNQ(title: "Tardigrades' Extreme Survival", content: "Tardigrades, also known as water bears, are microscopic organisms that can survive extreme conditions, including the vacuum of space, boiling temperatures, and intense radiation. They achieve this by entering a state called cryptobiosis, where they essentially suspend all biological activity."),
       FactNQ(title: "Frogs Drink Through Skin", content: "Frogs do not drink water with their mouths; instead, they absorb it through their skin. A special patch on their abdomen, known as the 'drinking patch,' allows them to stay hydrated by absorbing moisture directly from their environment."),
       FactNQ(title: "Butterflies Taste With Feet", content: "Butterflies have taste sensors on their feet, allowing them to identify the chemical composition of surfaces they land on. This ability helps them determine whether a plant is suitable for laying eggs or consuming nectar."),
       FactNQ(title: "The Deepest Ocean Trench", content: "The Mariana Trench is the deepest part of Earth's oceans, reaching a depth of about 11 kilometers. The extreme pressure in the trench is over 1,000 times greater than at sea level, yet life forms like amphipods and certain fish thrive there."),
       FactNQ(title: "Koalas' Unique Fingerprints", content: "Koalas have fingerprints that are strikingly similar to humans. Their fingerprints are so detailed that they could potentially confuse forensic investigations. This trait helps koalas grip tree branches securely."),
       FactNQ(title: "Comet Water Origins", content: "Some scientists believe that much of Earth's water may have come from comets that bombarded the planet during its early history. Comets contain frozen water and other compounds, making them a potential source of the water we rely on today."),
       FactNQ(title: "Coral Reefs' Vibrant Ecosystems", content: "Coral reefs, often called the 'rainforests of the sea,' support around 25% of all marine species despite covering less than 1% of the ocean floor. They are vital for biodiversity, providing habitats, food, and protection to countless organisms."),
       FactNQ(title: "Venus' Sulfuric Acid Clouds", content: "Venus is shrouded in thick clouds of sulfuric acid, making its surface uninhabitable. These clouds reflect sunlight, giving Venus its bright appearance in the sky. The extreme conditions have made Venus a focus of study for understanding planetary atmospheres."),
       FactNQ(title: "Spiders' Silk Strength", content: "Spider silk is incredibly strong, with some varieties being five times stronger than steel of the same diameter. Spiders use silk for various purposes, including building webs, wrapping prey, and creating egg sacs."),
       FactNQ(title: "Pluto's Heart-Shaped Region", content: "Pluto's surface features a heart-shaped region called Tombaugh Regio, named after the planet's discoverer, Clyde Tombaugh. This icy plain reflects sunlight, making it one of the brightest features on Pluto's surface."),
       FactNQ(title: "The Oldest Living Tree", content: "Methuselah, a bristlecone pine tree in California, is over 4,800 years old, making it one of the oldest living organisms on Earth. This tree has survived millennia of environmental changes and continues to thrive."),
       FactNQ(title: "Water Expands When Frozen", content: "Water is unusual because it expands when it freezes. This property allows ice to float on water, insulating aquatic life during cold winters and maintaining Earth's climate balance."),
       FactNQ(title: "Volcanoes Create New Islands", content: "Underwater volcanic activity can lead to the formation of new islands. For example, the Hawaiian Islands were created by volcanic eruptions that built up layers of lava over millions of years."),
       FactNQ(title: "Dolphins Have Unique Names", content: "Dolphins use distinct whistles to identify and call each other, effectively giving each individual a unique 'name.' This remarkable communication ability highlights their intelligence and social complexity."),
       FactNQ(title: "Mars' Tallest Volcano", content: "Mars is home to Olympus Mons, the tallest volcano in the Solar System, standing at around 21 kilometers high. It is nearly three times the height of Mount Everest and provides clues about volcanic activity on the Red Planet.")

]
