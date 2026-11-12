# db/seeds.rb
# Idempotent seeding of the default physical structure

# 1. Armário de Ferro (4 Gavetas)
cabinet_ferro = "Armário de Ferro"
(1..4).each do |i|
  Compartment.find_or_create_by!(
    cabinet: cabinet_ferro,
    name: "Gaveta #{i}"
  ) do |c|
    c.width_cm = 60.0
  end
end

# 2. Armário de Madeira (4 Gavetas)
cabinet_madeira = "Armário de Madeira"
(1..4).each do |i|
  Compartment.find_or_create_by!(
    cabinet: cabinet_madeira,
    name: "Gaveta #{i}"
  ) do |c|
    c.width_cm = 50.0
  end
end

# 3. Armário de Madeira (3 Prateleiras deslizantes e 1 Prateleira fixa)
cabinet_madeira_prateleiras = "Armário de Madeira (Prateleiras)"
(1..3).each do |i|
  Compartment.find_or_create_by!(
    cabinet: cabinet_madeira_prateleiras,
    name: "Prateleira Deslizante #{i}"
  ) do |c|
    c.width_cm = 80.0
  end
end

Compartment.find_or_create_by!(
  cabinet: cabinet_madeira_prateleiras,
  name: "Prateleira Fixa"
) do |c|
  c.width_cm = 80.0
end

puts "Database successfully seeded with physical compartments!"
