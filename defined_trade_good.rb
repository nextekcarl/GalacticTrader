class DefinedTradeGood
  #This is the specific type of BasicTradeGood to be found
  #Has a name, ton increment, and Base Price
  attr_accessor :tonnage
  def self.specific(basic_trade_good, remaining_tonnage)
    case
      when basic_trade_good == "Basic Electronics"
        case roll('2d6')
          when 2
            return "Calculators/Adding Machines |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 6,000Cr\n", @tonnage
          when 3..5
            return "Video Game and Entertainment Systems |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 8,000Cr\n", @tonnage
          when 6..8
            return "Personal and Commercial Computers |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 9..11
            return "Banking Machines and Security Systems |#{@tonnage=([roll('1d6')*4, remaining_tonnage].min)} tons| 12,000Cr\n", @tonnage
          when 12
            return "Microprocessor Assemblies |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 14,000Cr\n", @tonnage
        end
      when basic_trade_good == "Basic Machine Parts"
        case roll('2d6')
          when 2
            return "Stamped/Poured Cogs and Sprockets |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 8,000Cr\n", @tonnage
          when 3..5
            return "Piping and Attachment Pieces |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 9,000Cr\n", @tonnage
          when 6..8
            return "Engine Components |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 9..11
            return "Pneumatics and Hydraulics |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 11,000Cr\n", @tonnage
          when 12
            return "Starship-Quality Components |#{@tonnage=([roll('1d6')*4, remaining_tonnage].min)} tons| 12,000Cr\n", @tonnage
        end
      when basic_trade_good == "Basic Manufactured Goods"
        case roll('2d6')
          when 2
            return "Second Stage Components |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 8,000Cr\n", @tonnage
          when 3..5
            return "Uniforms/Clothing Products |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 9,000Cr\n", @tonnage
          when 6..8
            return "Residential Appliances |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 9..11
            return "Furniture/Storage Systems/Tools |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 11,000Cr\n", @tonnage
          when 12
            return "Vehicle/Survival Accessories |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 12,000Cr\n", @tonnage
        end
      when basic_trade_good == "Basic Raw Materials"
        case roll('2d6')
          when 2
            return "Foundation Stones and Base Elements |#{@tonnage=([roll('1d6')*14, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 3..5
            return "Workable Metals |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 3,000Cr\n", @tonnage
          when 6..8
            return "Workable Alloys |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 9..11
            return "Fabricated Plastics |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 7,000Cr\n", @tonnage
          when 12
            return "Chemical Solutions or Compounds |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 9,000Cr\n", @tonnage
        end
      when basic_trade_good == "Basic Consumables"
        case roll('2d6')
          when 2
            return "Feed-grade Vegetation |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 500Cr\n", @tonnage
          when 3..5
            return "Food-grade Vegetation |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 6..8
            return "Pre-packaged Food and Drink |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 2,000Cr\n", @tonnage
          when 9..11
            return "Survival Rations and Storage-packed Liquids |#{@tonnage=([roll('1d6')*8, remaining_tonnage].min)} tons| 3,000Cr\n", @tonnage
          when 12
            return "Junk Food/Soda/Beer |#{@tonnage=([roll('1d6')*4, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
        end
      when basic_trade_good == "Basic Ore"
        case roll('2d6')
          when 2
            return "Bornite or Galena or Sedimentary Stone |#{@tonnage=([roll('1d6')*14, remaining_tonnage].min)} tons| 250Cr\n", @tonnage
          when 3..5
            return "Chalcocite or Talc |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 500Cr\n", @tonnage
          when 6..8
            return "Bauxite, Coltan and Wolframite |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 9..11
            return "Acanthite, Cobaltite or Magnetite |#{@tonnage=([roll('1d6')*8, remaining_tonnage].min)} tons| 1,500Cr\n", @tonnage
          when 12
            return "Chromite or Cinnabar |#{@tonnage=([roll('1d6')*4, remaining_tonnage].min)} tons| 2,000Cr\n", @tonnage
        end
      when basic_trade_good == "Advanced Electronics"
        case roll('2d6')
          when 2
            return "Circuitry Bundles |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 3..5
            return "Fibre-optic Components |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 6..8
            return "VR Computer and Sensor Packages |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 9..11
            return "Weapon Components |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 125,000Cr\n", @tonnage
          when 12
            return "Starship Bridge Components |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 150,000Cr\n", @tonnage
          end
      when basic_trade_good == "Advanced Machine Parts"
        case roll('2d6')
          when 2
            return "Alloy and Plastic Tool Kits |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 3..5
            return "Starship Deckplate/Atmospheric Filters |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 6..8
            return "Fusion Conduits/Power Plant Shells |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 75,000Cr\n", @tonnage
          when 9..11
            return "Weapon Cores/Starship Hull |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 90,000Cr\n", @tonnage
          when 12
            return "Gravitic Gyros, Navigation Magnetics |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
        end
      when basic_trade_good == "Advanced Manufactured Goods"
        case roll('2d6')
          when 2
            return "High-Pressure or Temperature-Resistant Components |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 3..5
            return "Protective or Specialised Clothing |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 6..8
            return "Survival Equipment/Colonisation Kits |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 9..11
            return "Computerised Job-related Gear |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 125,000Cr\n", @tonnage
          when 12
            return "Starship Add-Ons/Powered Armour Components |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 150,000Cr\n", @tonnage
        end
      when basic_trade_good == "Advanced Weapons"
        case roll('2d6')
          when 2
            return "(TL7 or less) Slug Weapons |#{@tonnage=([roll('1d6')*7, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 3..5
            return "(TL10 or less) Slug Weapons |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 6..8
            return "(TL12 or less) Slug or Energy Weapons/Heavy Slug Weapons |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 150,000Cr\n", @tonnage
          when 9..11
            return "(TL15 or less) Slug or Energy Weapons/Explosives |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
          when 12
            return "Artillery, Heavy Energy Weapons |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 250,000Cr\n", @tonnage
        end
      when basic_trade_good == "Advanced Vehicles"
        case roll('2d6')
          when 2
            return "Engine Components or Packages |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 3..5
            return "Seafaring or Mole Vehicle Components or Packages |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 140,000Cr\n", @tonnage
          when 6..8
            return "Air/Raft Components or Packages |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 180,000Cr\n", @tonnage
          when 9..11
            return "Grav-Vehicle Components |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
          when 12
            return "Spacecraft Components |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 250,000Cr\n", @tonnage
        end
      when basic_trade_good == "Biochemicals"
        case roll('2d6')
          when 2
            return "Organic Glues, Acids or Bases/Vegetable Oil |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 3..5
            return "Ethanol/Fructose Syrup |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 6..8
            return "Biodiesel/Cooking Compounds |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 9..11
            return "Oxygenated Cleaner/Biodegradable Concentrates |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 60,000Cr\n", @tonnage
          when 12
            return "Gelid Oxygen-Substitutes/Bio-fusion Cell Fuel |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 80,000Cr\n", @tonnage
        end
      when basic_trade_good == "Crystals & Gems"
        case roll('2d6')
          when 2
            return "Rock Salt/Compressed Coal |#{@tonnage=([roll('1d6')*7, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 3..5
            return "Graphite/Quartz |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 6..8
            return "Silica/Focuser-Quality Gems |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 20,000Cr\n", @tonnage
          when 9..11
            return "Photonics/Synthetic Gems |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 30,000Cr\n", @tonnage
          when 12
            return "Industrial Diamond/Jewellery-Quality Gems |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 45,000Cr\n", @tonnage
        end
      when basic_trade_good == "Cybernetics"
        case roll('2d6')
          when 2
            return "Cybernetic Lubricants |#{@tonnage=([roll('1d6')+2, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 3..5
            return "Cybernetic Components/Physical Augments |#{@tonnage=([roll('1d6')+1, remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
          when 6..8
            return "Cyber-Prosthetics |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 250,000Cr\n", @tonnage
          when 9..11
            return "Cosmetic Prosthetics |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 350,000Cr\n", @tonnage
          when 12
            return "Real-Life Replacements and Augments |#{@tonnage=([1, remaining_tonnage].min)} tons| 500,000Cr\n", @tonnage
        end
      when basic_trade_good == "Live Animals"
        case roll('2d6')
          when 2
            return "Beasts of Burden |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 2,500Cr\n", @tonnage
          when 3..5
            return "Untrained Riding Animals |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 6..8
            return "Trained Riding Animals/Common Pets |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 9..11
            return "Untrained Guard Animals |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 12,500Cr\n", @tonnage
          when 12
            return "Trained Guard Animals/Exotic Pets |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 15,000Cr\n", @tonnage
        end
      when basic_trade_good == "Luxury Consumables"
        case roll('2d6')
          when 2
            return "Common Desserts/Rare Food Additives |#{@tonnage=([roll('1d6')*14, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 3..5
            return "Common Desserts/Common Wine |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 6..8
            return "Rare Foods/Common Liquor |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 20,000Cr\n", @tonnage
          when 9..11
            return "Exotic Foods/Rare Desserts/Rare Liquor |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 30,000Cr\n", @tonnage
          when 12
            return "Exotic Desserts/Exotic Liquor |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
        end
      when basic_trade_good == "Luxury Goods"
        case roll('2d6')
          when 2
            return "Rare Literature/Art |#{@tonnage=([roll('1d6')+2, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 3..5
            return "Jewellery/Alien Textiles |#{@tonnage=([roll('1d6')+1, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 6..8
            return "Rare Clothing/Home Decorations |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
          when 9..11
            return "VR Electronic Entertainment Devices |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 250,000Cr\n", @tonnage
          when 12
            return "Exotic Furnishings/Exquisite Jewellery |#{@tonnage=([1, remaining_tonnage].min)} tons| 500,000Cr\n", @tonnage
        end
      when basic_trade_good == "Medical Supplies"
        case roll('2d6')
          when 2
            return "Medical Uniforms/Disposable Tools |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 3..5
            return "Cosmetic Chemicals/Practitioner’s Tools |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 30,000Cr\n", @tonnage
          when 6..8
            return "General Medical Equipment or Supplies |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 9..11
            return "Specialist Equipment or Supplies |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 75,000Cr\n", @tonnage
          when 12
            return "Micro-surgical Equipment or Supplies |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
        end
      when basic_trade_good == "Petrochemicals"
        case roll('2d6')
          when 2
            return "Crude Oil/Diesel |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 2,500Cr\n", @tonnage
          when 3..5
            return "Refined Kerosene/Purifi ed Oil |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 6..8
            return "Gasoline/Machine Lubricants |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 9..11
            return "Jet Fuel/Gelid Adhesives |#{@tonnage=([roll('1d6')*8, remaining_tonnage].min)} tons| 20,000Cr\n", @tonnage
          when 12
            return "Rocket Fuel/Power Plant Starter Charges |#{@tonnage=([roll('1d6')*4, remaining_tonnage].min)} tons| 30,000Cr\n", @tonnage
        end
      when basic_trade_good == "Pharmaceuticals"
        case roll('2d6')
          when 2
            return "OTC Drugs/Antibiotics |#{@tonnage=([roll('1d6')+3, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 3..5
            return "Antivenin/Prescription Medications |#{@tonnage=([roll('1d6')+2, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 6..8
            return "Prescription Medications/Surgical |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 9..11
            return "Anagathics |#{@tonnage=([2, remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
          when 12
            return "Psi-Related Drugs/Viral Therapy Doses |#{@tonnage=([1, remaining_tonnage].min)} tons| 500,000Cr\n", @tonnage
        end
      when basic_trade_good == "Polymers"
        case roll('2d6')
          when 2
            return "Rubber/Vinyl Spooling |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 3..5
            return "Insulation/Polyurethane Foam |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 3,000Cr\n", @tonnage
          when 6..8
            return "Poured Plastics/Synthetic Fibre Spools |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 7,000Cr\n", @tonnage
          when 9..11
            return "Kevlar/Teflon |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 9,000Cr\n", @tonnage
          when 12
            return "Advanced Ballistic Weave |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
        end
      when basic_trade_good == "Precious Metals"
        case roll('2d6')
          when 2
            return "Bismuth/Indium |#{@tonnage=([roll('1d6')+2, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 3..5
            return "Beryllium/Silver |#{@tonnage=([roll('1d6')+1, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 6..8
            return "Ruthenium/Rhenium |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 9..11
            return "Gold/Osmium/Iridium |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 75,000Cr\n", @tonnage
          when 12
            return "Platinum/Rhodium |#{@tonnage=([1, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
        end
      when basic_trade_good == "Radioactives"
        case roll('2d6')
          when 2
            return "Nuclear Waste/Deactivated Materials |#{@tonnage=([roll('1d6')+3, remaining_tonnage].min)} tons| 500,000Cr\n", @tonnage
          when 3..5
            return "Industrial Isotopes |#{@tonnage=([roll('1d6')+2, remaining_tonnage].min)} tons| 750,000Cr\n", @tonnage
          when 6..8
            return "Medical Isotopes/Reactor-Grade Uranium |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 1,000,000Cr\n", @tonnage
          when 9..11
            return "Weapons-Grade Plutonium/ Fusion Cell Rods |#{@tonnage=([1, remaining_tonnage].min)} tons| 1,250,000Cr\n", @tonnage
          when 12
            return "Superweapon-grade Isotopes |#{@tonnage=([1, remaining_tonnage].min)} tons| 1,500,000Cr\n", @tonnage
        end
      when basic_trade_good == "Robots"
        case roll('2d6')
          when 2
            return "Automated Robotics/Cargo Drones |#{@tonnage=([roll('1d6')*7, remaining_tonnage].min)} tons| 150,000Cr\n", @tonnage
          when 3..5
            return "Industrial or Personal Drones |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 300,000Cr\n", @tonnage
          when 6..8
            return "Combat or Guardian Drones |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 400,000Cr\n", @tonnage
          when 9..11
            return "Scout and Sensor Drones |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 500,000Cr\n", @tonnage
          when 12
            return "Advanced Robotics |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 650,000Cr\n", @tonnage
        end
      when basic_trade_good == "Spices"
        case roll('2d6')
          when 2
            return "Table Salt/Black Pepper |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 3..5
            return "Adobo/Basil/Sage |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 3,000Cr\n", @tonnage
          when 6..8
            return "Aniseed/Curry/Fennel/White Pepper |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 6,000Cr\n", @tonnage
          when 9..11
            return "Cinnamon/Marjoram/Wasabi |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 9,000Cr\n", @tonnage
          when 12
            return "Black Salt/Saffron/Alien Flavourings |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 12,000Cr\n", @tonnage
        end
      when basic_trade_good == "Textiles"
        case roll('2d6')
          when 2
            return "Yarn/Wool/Canvas |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 3..5
            return "Animal-based Fabrics |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 2,000Cr\n", @tonnage
          when 6..8
            return "Cotton or Flax-based Fabrics |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 3,000Cr\n", @tonnage
          when 9..11
            return "Synthetic Silks/Finished Common Clothing |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 4,000Cr\n", @tonnage
          when 12
            return "Organic Silk/Satin/Finished Fine Clothing |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
        end
      when basic_trade_good == "Uncommon Ore"
        case roll('2d6')
          when 2
            return "Lead/Zinc |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 3..5
            return "Copper/Tin |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 2,500Cr\n", @tonnage
          when 6..8
            return "Nickel/Sodium/Tungsten |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 9..11
            return "Gold/Silver/Ilmenite |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 7,500Cr\n", @tonnage
          when 12
            return "Platinum/Uranium |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
        end
      when basic_trade_good == "Uncommon Raw Materials"
        case roll('2d6')
          when 2
            return "Aluminium/Brass/Calcium |#{@tonnage=([roll('1d6')*14, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 3..5
            return "Carbonate/Magnesium/Meteoric Iron |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 6..8
            return "Marble/Potassium/Titanium |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 20,000Cr\n", @tonnage
          when 9..11
            return "Stellite/Tombac |#{@tonnage=([roll('1d6')*8, remaining_tonnage].min)} tons| 35,000Cr\n", @tonnage
          when 12
            return "Depleted Uranium/Ceramic-Alloy |#{@tonnage=([roll('1d6')*3, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
        end
      when basic_trade_good == "Wood"
        case roll('2d6')
          when 2
            return "Low-grade Rough Cuts/Construction Scrap |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 100Cr\n", @tonnage
          when 3..5
            return "High-Grade Rough-Cut |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 500Cr\n", @tonnage
          when 6..8
            return "Construction-grade Timber |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 1,000Cr\n", @tonnage
          when 9..11
            return "Furniture-grade Timber/Rare Grades |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 2,000Cr\n", @tonnage
          when 12
            return "Exotics (Pernambuco, White Mahogany, etc.) |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 4,000Cr\n", @tonnage
        end
      when basic_trade_good == "Vehicles"
        case roll('2d6')
          when 2
            return "Wheeled Repair Components |#{@tonnage=([roll('1d6')*14, remaining_tonnage].min)} tons| 5,000Cr\n", @tonnage
          when 3..5
            return "Tracked Repair Components |#{@tonnage=([roll('1d6')*12, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 6..8
            return "Wheeled Components or Packages |#{@tonnage=([roll('1d6')*10, remaining_tonnage].min)} tons| 15,000Cr\n", @tonnage
          when 9..11
            return "Wheeled Vehicles/Tracked Components or Packages |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 20,000Cr\n", @tonnage
          when 12
            return "Tracked Vehicles |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 30,000Cr\n", @tonnage
        end
      when basic_trade_good == "Biochemicals, Illegal"
        case roll('2d6')
          when 2
            return "Herbal Stimulants/Ultra-Caffeine |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 3..5
            return "Raw Growth Hormones |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 6..8
            return "Chemical Solvents/Protein Duplexer Steroids |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 9..11
            return "Bio-Acid/Pheromone Extracts |#{@tonnage=([2, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 12
            return "Genetic Mutagens/Organic Toxins |#{@tonnage=([1, remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
        end
      when basic_trade_good == "Cybernetics, Illegal"
        case roll('2d6')
          when 2
            return "Unlicensed Augment Tools and Parts |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 3..5
            return "Physical Enhancement Tissues |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 150,000Cr\n", @tonnage
          when 6..8
            return "Unlicensed Augmentatives/Combat Implant Additives |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 250,000Cr\n", @tonnage
          when 9..11
            return "Combat Prosthetics/Surgical Duplications |#{@tonnage=([2, remaining_tonnage].min)} tons| 400,000Cr\n", @tonnage
          when 12
            return "Mimicry Augmetics |#{@tonnage=([1, remaining_tonnage].min)} tons| 650,000Cr\n", @tonnage
        end
      when basic_trade_good == "Drugs, Illegal"
        case roll('2d6')
          when 2
            return "Herbal Stimulants/Biological Hallucinogens |#{@tonnage=([roll('1d6')+2, remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 3..5
            return "Chemical Depressants/Natural Narcotics |#{@tonnage=([roll('1d6')+1, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 6..8
            return "Chemical Stimulants and Hallucinogens |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 9..11
            return "Designer Narcotics |#{@tonnage=([2, remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
          when 12
            return "Alien Synthetics/Psi-Drugs |#{@tonnage=([1, remaining_tonnage].min)} tons| 300,000Cr\n", @tonnage
        end
      when basic_trade_good == "Luxuries, Illegal"
        case roll('2d6')
          when 2
            return "Anti-Governmental Propaganda/Endangered Animal Products |#{@tonnage=([roll('1d6')+1, remaining_tonnage].min)} tons| 10,000Cr\n", @tonnage
          when 3..5
            return "Black-data Recordings/Slaving Gear |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 25,000Cr\n", @tonnage
          when 6..8
            return "Extinct Animal Products |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 9..11
            return "BTL Devices/Cloning Equipment |#{@tonnage=([2, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 12
            return "Forbidden Pleasures |#{@tonnage=([1, remaining_tonnage].min)} tons| 200,000Cr\n", @tonnage
        end
      when basic_trade_good == "Weapons, Illegal"
        case roll('2d6')
          when 2
            return "Chain-drive Weaponry/Armour-Piercing Ammunition |#{@tonnage=([roll('1d6')*6, remaining_tonnage].min)} tons| 50,000Cr\n", @tonnage
          when 3..5
            return "Protected Technologies/Explosive or Incendiary Ammunition |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 100,000Cr\n", @tonnage
          when 6..8
            return "Synthetic Poisons/Personal-scale Mass Trauma Explosives |#{@tonnage=([roll('1d6')*5, remaining_tonnage].min)} tons| 150,000Cr\n", @tonnage
          when 9..11
            return "Arclight Weaponry/Biological or Chemical Weaponry/Naval Starship Weaponry |#{@tonnage=([roll('1d6')*2, remaining_tonnage].min)} tons| 300,000Cr\n", @tonnage
          when 12
            return "Disintegrators/Psi-Weaponry/Weapons of Mass Destruction |#{@tonnage=([roll('1d6'), remaining_tonnage].min)} tons| 450,000Cr\n", @tonnage
        end
      when basic_trade_good == "Exotics"
        return "Exotics, check page 110Cr\n", 1
      else
        raise "Invalid Basic Trade Good: #{basic_trade_good}"
    end
  end
end
