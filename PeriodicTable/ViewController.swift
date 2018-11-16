//
//  ViewController.swift
//  PeriodicTable
//
//  Created by Mark Meretzky on 11/14/18.
//  Copyright © 2018 New York University School of Professional Studies. All rights reserved.
//  Diagram and colors from https://en.wikipedia.org/wiki/Periodic_table#Overview
//

import UIKit;

class ViewController: UIViewController {
    
    let elements: [Element] = [
        //Period 1
        Element(abbreviation: "",   subcategory: .reactiveNonmetal),    //  unused
        Element(abbreviation: "H",  subcategory: .reactiveNonmetal),    //  1 Hydrogen
        Element(abbreviation: "He", subcategory: .nobleGas),            //  2 Helium
        
        //Period 2
        Element(abbreviation: "Li", subcategory: .alkaliMetal),         //  3 Lithium
        Element(abbreviation: "Be", subcategory: .alkalineEarthMetal),  //  4 Beryllium
        Element(abbreviation: "B",  subcategory: .metalloid),           //  5 Boron
        Element(abbreviation: "C",  subcategory: .reactiveNonmetal),    //  6 Carbon
        Element(abbreviation: "N",  subcategory: .reactiveNonmetal),    //  7 Nitrogen
        Element(abbreviation: "O",  subcategory: .reactiveNonmetal),    //  8 Oxygen
        Element(abbreviation: "F",  subcategory: .reactiveNonmetal),    //  9 Flourine
        Element(abbreviation: "Ne", subcategory: .nobleGas),            // 10 Neon
        
        //Period 3
        Element(abbreviation: "Na", subcategory: .alkaliMetal),         // 11 Sodium
        Element(abbreviation: "Mg", subcategory: .alkalineEarthMetal),  // 12 Magnesium
        Element(abbreviation: "Al", subcategory: .posttransitionMetal), // 13 Aluminum
        Element(abbreviation: "Si", subcategory: .metalloid),           // 14 Silicon
        Element(abbreviation: "P",  subcategory: .reactiveNonmetal),    // 15 Phosphorus
        Element(abbreviation: "S",  subcategory: .reactiveNonmetal),    // 16 Sulfur
        Element(abbreviation: "Cl", subcategory: .reactiveNonmetal),    // 17 Chlorine
        Element(abbreviation: "Ar", subcategory: .nobleGas),            // 18 Argon
        
        //Period 4
        Element(abbreviation: "K",  subcategory: .alkaliMetal),         // 19 Potassium
        Element(abbreviation: "Ca", subcategory: .alkalineEarthMetal),  // 20 Calcium
        Element(abbreviation: "Sc", subcategory: .transitionMetal),     // 21 Scandium
        Element(abbreviation: "Ti", subcategory: .transitionMetal),     // 22 Titanium
        Element(abbreviation: "V",  subcategory: .transitionMetal),     // 23 Vanadium
        Element(abbreviation: "Cr", subcategory: .transitionMetal),     // 24 Chromium
        Element(abbreviation: "Mn", subcategory: .transitionMetal),     // 25 Manganese
        Element(abbreviation: "Fe", subcategory: .transitionMetal),     // 26 Iron
        Element(abbreviation: "Co", subcategory: .transitionMetal),     // 27 Cobalt
        Element(abbreviation: "Ni", subcategory: .transitionMetal),     // 28 Nickel
        Element(abbreviation: "Cu", subcategory: .transitionMetal),     // 29 Copper
        Element(abbreviation: "Zn", subcategory: .posttransitionMetal), // 30 Zinc
        Element(abbreviation: "Ga", subcategory: .posttransitionMetal), // 31 Gallium
        Element(abbreviation: "Ge", subcategory: .metalloid),           // 32 Germanium
        Element(abbreviation: "As", subcategory: .metalloid),           // 33 Arsenic
        Element(abbreviation: "As", subcategory: .reactiveNonmetal),    // 34 Selenium
        Element(abbreviation: "Br", subcategory: .reactiveNonmetal),    // 35 Bromine
        Element(abbreviation: "Kr", subcategory: .nobleGas),            // 36 Krypton
        
        //Period 5
        Element(abbreviation: "Rb", subcategory: .alkaliMetal),         // 37 Rubidium
        Element(abbreviation: "Sr", subcategory: .alkalineEarthMetal),  // 38 Strontium
        Element(abbreviation: "Y",  subcategory: .transitionMetal),     // 39 Yttrium
        Element(abbreviation: "Zr", subcategory: .transitionMetal),     // 40 Zirconium
        Element(abbreviation: "Nb", subcategory: .transitionMetal),     // 41 Niobium
        Element(abbreviation: "Mo", subcategory: .transitionMetal),     // 42 Molybdenum
        Element(abbreviation: "Tc", subcategory: .transitionMetal),     // 43 Technetium
        Element(abbreviation: "Ru", subcategory: .transitionMetal),     // 44 Ruthenium
        Element(abbreviation: "Rh", subcategory: .transitionMetal),     // 45 Rhodium
        Element(abbreviation: "Pd", subcategory: .transitionMetal),     // 46 Palladium
        Element(abbreviation: "Ag", subcategory: .transitionMetal),     // 47 Silver
        Element(abbreviation: "Cd", subcategory: .posttransitionMetal), // 48 Cadmium
        Element(abbreviation: "In", subcategory: .posttransitionMetal), // 49 Indium
        Element(abbreviation: "Sn", subcategory: .posttransitionMetal), // 50 Tin
        Element(abbreviation: "Sb", subcategory: .metalloid),           // 51 Antimony
        Element(abbreviation: "Te", subcategory: .metalloid),           // 52 Tellurium
        Element(abbreviation: "I",  subcategory: .reactiveNonmetal),    // 53 Iodine
        Element(abbreviation: "Xe", subcategory: .nobleGas),            // 54 Xenon
        
        //Period 6
        Element(abbreviation: "Cs", subcategory: .alkaliMetal),         // 55 Caesium
        Element(abbreviation: "Ba", subcategory: .alkalineEarthMetal),  // 56 Barium
        Element(abbreviation: "La", subcategory: .lanthanide),          // 57 Lanthanum
        Element(abbreviation: "Ce", subcategory: .lanthanide),          // 58 Cerium
        Element(abbreviation: "Pr", subcategory: .lanthanide),          // 59 Praseodymium
        Element(abbreviation: "Nd", subcategory: .lanthanide),          // 60 Neodymium
        Element(abbreviation: "Pm", subcategory: .lanthanide),          // 61 Promethium
        Element(abbreviation: "Sm", subcategory: .lanthanide),          // 62 Samarium
        Element(abbreviation: "Eu", subcategory: .lanthanide),          // 63 Europium
        Element(abbreviation: "Gd", subcategory: .lanthanide),          // 64 Gadolinium
        Element(abbreviation: "Tb", subcategory: .lanthanide),          // 65 Terbium
        Element(abbreviation: "Dy", subcategory: .lanthanide),          // 66 Dysprosium
        Element(abbreviation: "Ho", subcategory: .lanthanide),          // 67 Holmium
        Element(abbreviation: "Er", subcategory: .lanthanide),          // 68 Erbium
        Element(abbreviation: "Tm", subcategory: .lanthanide),          // 69 Thulium
        Element(abbreviation: "Yb", subcategory: .lanthanide),          // 70 Ytterbium
        Element(abbreviation: "Lu", subcategory: .lanthanide),          // 71 Lutetium
        Element(abbreviation: "Hf", subcategory: .transitionMetal),     // 72 Hafnium
        Element(abbreviation: "Ta", subcategory: .transitionMetal),     // 73 Tantalum
        Element(abbreviation: "W",  subcategory: .transitionMetal),     // 74 Tungsten
        Element(abbreviation: "Re", subcategory: .transitionMetal),     // 75 Rhenium
        Element(abbreviation: "Os", subcategory: .transitionMetal),     // 76 Osmium
        Element(abbreviation: "Ir", subcategory: .transitionMetal),     // 77 Iridium
        Element(abbreviation: "Pt", subcategory: .transitionMetal),     // 78 Platinum
        Element(abbreviation: "Au", subcategory: .transitionMetal),     // 79 Gold
        Element(abbreviation: "Hg", subcategory: .transitionMetal),     // 80 Mercury
        Element(abbreviation: "Tl", subcategory: .transitionMetal),     // 81 Thallium
        Element(abbreviation: "Pb", subcategory: .transitionMetal),     // 82 Lead
        Element(abbreviation: "Bi", subcategory: .transitionMetal),     // 83 Bismuth
        Element(abbreviation: "Po", subcategory: .transitionMetal),     // 84 Polonium
        Element(abbreviation: "At", subcategory: .metalloid),           // 85 Astetine
        Element(abbreviation: "Rn", subcategory: .nobleGas),            // 86 Radon
        
        //Period 7
        Element(abbreviation: "Fr", subcategory: .alkaliMetal),         // 87 Francium
        Element(abbreviation: "Ra", subcategory: .alkalineEarthMetal),  // 88 Radium
        Element(abbreviation: "Ac", subcategory: .actinide),            // 89 Actinium
        Element(abbreviation: "Th", subcategory: .actinide),            // 90 Thorium
        Element(abbreviation: "Pa", subcategory: .actinide),            // 91 Protactinium
        Element(abbreviation: "U",  subcategory: .actinide),            // 92 Uranium
        Element(abbreviation: "Np", subcategory: .actinide),            // 93 Neptunium
        Element(abbreviation: "Pu", subcategory: .actinide),            // 94 Plutonium
        Element(abbreviation: "Am", subcategory: .actinide),            // 95 Americium
        Element(abbreviation: "Cm", subcategory: .actinide),            // 96 Curium
        Element(abbreviation: "Bk", subcategory: .actinide),            // 97 Berkelium
        Element(abbreviation: "Cf", subcategory: .actinide),            // 98 Californium
        Element(abbreviation: "Es", subcategory: .actinide),            // 99 Einsteinium
        Element(abbreviation: "Fm", subcategory: .actinide),            //100 Fermium
        Element(abbreviation: "Md", subcategory: .actinide),            //101 Mendelevium
        Element(abbreviation: "No", subcategory: .actinide),            //102 Nobelium
        Element(abbreviation: "Lr", subcategory: .actinide),            //103 Lawrencium
        Element(abbreviation: "Rf", subcategory: .transitionMetal),     //104 Rutherfordium
        Element(abbreviation: "Db", subcategory: .transitionMetal),     //105 Dubnium
        Element(abbreviation: "Sg", subcategory: .transitionMetal),     //106 Seaborgium
        Element(abbreviation: "Bh", subcategory: .transitionMetal),     //107 Bohrium
        Element(abbreviation: "Hs", subcategory: .transitionMetal),     //108 Hassium
        Element(abbreviation: "Mt", subcategory: .unknown),             //109 Meitnerium
        Element(abbreviation: "Ds", subcategory: .unknown),             //110 Darmstadtium
        Element(abbreviation: "Rg", subcategory: .unknown),             //111 Roentgenium
        Element(abbreviation: "Cn", subcategory: .posttransitionMetal), //112 Copernicium
        Element(abbreviation: "Nh", subcategory: .unknown),             //113 Nihonium
        Element(abbreviation: "Fl", subcategory: .unknown),             //114 Flerovium
        Element(abbreviation: "Mc", subcategory: .unknown),             //115 Moscovium
        Element(abbreviation: "Lv", subcategory: .unknown),             //116 Livermorium
        Element(abbreviation: "Tn", subcategory: .unknown),             //117 Tennessine
        Element(abbreviation: "Og", subcategory: .unknown)              //118 Oganesson
    ];
    
    @IBOutlet weak var periodicTable: UIStackView!;
    @IBOutlet weak var extraTable: UIStackView!; //two rows that hold the lanthanides and actinides
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        
        //The groups (columns) of the periodic table, numbered from 1 to numberOfGroups inclusive.
        //The first element of the array is unused.
        let numberOfGroups: Int = 18;
        var groups: [UIStackView] = [UIStackView]();
        
        for _ in 0 ..< numberOfGroups + 1 {
            let group: UIStackView = UIStackView();
            group.axis = .vertical;
            groups.append(group);
        }
        
        //the columns of the extra table
        let numberOfExtraGroups: Int = 14;   //lanthanides and actinides
        var extraGroups: [UIStackView] = [UIStackView]();
        
        for _ in 0 ..< numberOfExtraGroups {
            let extraGroup: UIStackView = UIStackView();
            extraGroup.axis = .vertical;
            extraGroups.append(extraGroup);
        }
        
        for (atomicNumber, element) in elements.enumerated().dropFirst() {
            let label: UILabel = UILabel();
            
            //Configure the label.
            label.backgroundColor = element.subcategory.color;
            label.numberOfLines = 0;   //lets the label display multiple lines
            label.textAlignment = .center;
            label.text = "\(atomicNumber)\n\(element.abbreviation)";
            label.layer.borderWidth = 0.25;
            
            //Decide which group the label goes in.
            if element.subcategory == .lanthanide && atomicNumber >= 58 {
                extraGroups[atomicNumber - 58].addArrangedSubview(label);
            } else if element.subcategory == .actinide && atomicNumber >= 90 {
                extraGroups[atomicNumber - 90].addArrangedSubview(label);
            } else {
                let (period, lengthOfPeriod, col) = periodCol(atomicNumber: atomicNumber);
                let cutoff: Int = period == 1 ? 1 : period <= 3 ? 2 : 3;
                let g: Int = col <= cutoff ? col : numberOfGroups - lengthOfPeriod + col;
                groups[g].addArrangedSubview(label);
            }
        }
        
        //Put the groups into the periodic table.
        for group in groups.dropFirst() {
            periodicTable.addArrangedSubview(group);
        }
        periodicTable.setCustomSpacing(10, after: periodicTable.arrangedSubviews[2]);
        
        //Put the extra groups into the extra table down below.
        for extraGroup in extraGroups {
            extraTable.addArrangedSubview(extraGroup);
        }
    }

}

//Return the element's period, the length of its period, and its place within the period.
//The places are numbered left to right, starting at 1.

func periodCol(atomicNumber: Int) -> (Int, Int, Int) {
    let lengths: [Int] = [
        2 * 0 * 0,   //unused
        2 * 1 * 1,   //period 1
        2 * 2 * 2,   //period 2
        2 * 2 * 2,   //period 3
        2 * 3 * 3,   //period 4
        2 * 3 * 3,   //period 5
        2 * 4 * 4,   //period 6
        2 * 4 * 4    //period 7
    ];
    
    var sum: Int = 0;
    for (period, length) in lengths.enumerated().dropFirst() {
        sum += length;
        if atomicNumber <= sum {
            return (period, length, atomicNumber - sum + length);
        }
    }
    return (0, 0, 0);   //Not attempting error recovery.
}
