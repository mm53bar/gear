# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



packing = {"Packing" => ["Backpack", "Pack Cover/Liner", "Stuff Sack (Clothing)",
    "Stuff Sack (Food)", "Stuff Sack (Hammock)", "Stuff Sack (Tarp)",
    "Stuff Sack (Ditties)"]}
shelter = {"Shelter" => ["Hammock", "Tarp", "Bugnet", "Suspension",
    "Tarp Ridgeline", "Tarp Guylines", "Stakes", "Tent"]}
sleeping = {"Sleeping" => ["Top Quilt", "Underquilt", "Sleeping Bag",
    "Sleeping Pad"]}
clothing = {"Clothing Packed" => ["Thermal Top", "Thermal Bottoms",
    "Jacket/Vest", "Rain Jacket/Poncho", "Wind Shirt", "Spare Pants/Shorts",
    "Shell Pants", "Hiking Socks", "Sleeping Socks", "Toque", "Gloves",
    "Buff"]}
cooking = {"Cooking & Drinking" => ["Cooking Stove", "Fuel Bottle/Canister",
    "Cook Pot", "Pot Cozy", "Mug", "Spoon", "Lighters", "Water Bottles",
    "Water Treatment"]}
survival = {"Survival" => ["Trail Maps/Guidebook", "Compass", "Light",
    "First Aid Kit", "Knife", "Fire Starter", "Emergency Whistle",
    "Suncreen", "Bug Repellant", "Rope/Cord", "Signal Mirror"]}
hygiene = {"Hygiene" => ["Toilet Paper", "Hand Sanitizer", "Toothbrush",
    "Toothpaste", "Camp Towel", "Soap", "Blister Treatment",
    "Chafe Treatment"]}
gadgets = {"Gadgets" => ["Cell Phone", "Camera", "GPS Receiver",
    "Music Player", "Spare Batteries", "Battery Charger", "Trail Journal",
    "Pen/Pencil"]}
worn = {"Worn/Carried" => ["Underwear", "Shirt", "Shorts/Pants", "Socks",
    "Shoes/Boots", "Sunglasses", "Sun Hat", "Trekking Poles"]}
    
packed = [packing, shelter, sleeping, clothing, cooking, survival, hygiene,
    gadgets]

packed.each do |packed_section|
  section = SectionRepository.new.create name: packed_section.keys.first, location: :packed
  packed_section.values.first.each do |category_name|
    SectionRepository.new.add_category(section, {name: category_name})
  end
end

  