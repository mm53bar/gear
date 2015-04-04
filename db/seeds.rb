packing = {"Packing" => ["Backpack", "Pack Cover/Liner",
    "Stuff Sack (Clothing)","Stuff Sack (Food)", "Stuff Sack (Hammock)",
    "Stuff Sack (Tarp)", "Stuff Sack (Ditties)"]}
shelter = {"Shelter" => ["Hammock", "Tarp", "Bugnet", "Suspension",
    "Tarp Ridgeline", "Tarp Guylines", "Stakes", "Tent"]}
sleeping = {"Sleeping" => ["Top Quilt", "Underquilt", "Sleeping Bag",
    "Sleeping Pad"]}
clothing = {"Clothing" => ["Thermal Top", "Thermal Bottoms",
    "Jacket/Vest", "Rain Jacket/Poncho", "Wind Shirt", "Shorts/Pants",
    "Shell Pants", "Hiking Socks", "Socks", "Hats", "Gloves",
    "Bandana", "Underwear", "Shirt", "Shoes/Boots", "Sunglasses"]}
cooking = {"Cooking & Drinking" => ["Cooking Stove", "Fuel Bottle/Canister",
    "Cook Pot", "Pot Cozy", "Mug", "Spoon", "Lighters", "Water Bottles",
    "Water Treatment"]}
tools = {"Tools" => ["Trekking Poles", "Trail Maps/Guidebook", "Compass",
    "Light", "First Aid Kit", "Knife", "Fire Starter", "Emergency Whistle",
    "Suncreen", "Bug Repellant", "Rope/Cord", "Signal Mirror"]}
hygiene = {"Hygiene" => ["Toilet Paper", "Hand Sanitizer", "Toothbrush",
    "Toothpaste", "Camp Towel", "Soap", "Blister Treatment",
    "Chafe Treatment"]}
gadgets = {"Gadgets" => ["Cell Phone", "Camera", "GPS Receiver",
    "Music Player", "Spare Batteries", "Battery Charger", "Trail Journal",
    "Pen/Pencil"]}

packed = [packing, shelter, sleeping, clothing, cooking, tools, hygiene,
    gadgets]

packed.each do |packed_section|
  section = SectionRepository.new.create name: packed_section.keys.first
  packed_section.values.first.each do |category_name|
    SectionRepository.new.add_category(section, {name: category_name})
  end
end
