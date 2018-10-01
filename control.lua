script.on_configuration_changed( function(conf)
for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
  
    recipes["algae-farm-3"].enabled = technologies["bio-processing-red"].researched
    recipes["washing-plant-3"].enabled = technologies["water-washing-3"].researched
    recipes["hydro-plant-3"].enabled = technologies["water-treatment-4"].researched
    recipes["advanced-chemical-plant-3"].enabled = technologies["angels-advanced-chemistry-4"].researched
    recipes["powder-zinc"].enabled = technologies["angels-zinc-smelting-2"].researched
    recipes["gas-argon"].enabled = technologies["angels-nitrogen-processing-1"].researched
    recipes["angels-air-filter-3"].enabled = technologies["angels-nitrogen-processing-3"].researched
    recipes["angels-air-filter-4"].enabled = technologies["angels-nitrogen-processing-4"].researched
    recipes["solid-disodium-phosphate"].enabled = technologies["phosphorus-processing-2"].researched
    recipes["solid-tetrasodium-pyrophosphate"].enabled = technologies["phosphorus-processing-2"].researched
    
  
    if technologies["angels-tungsten-smelting-3"].researched then
        recipes["solid-tungsten-trioxide-smelting"].enabled = true
        recipes["pellet-tungsten-smelting-2"].enabled = true
        recipes["solid-sodium-tungstate-smelting"].enabled = true
        recipes["casting-powder-tungsten-3"].enabled = true
    end
      
  end
end)