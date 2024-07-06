script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	
	if (player.controller_type==defines.controllers.character) then
		local items
		local armor

		items = {
			{"power-armor-mk2", 1},
			{"construction-robot", 150},
			{"spidertron", 1},
			{"spidertron-remote", 1},
			{"fusion-reactor-equipment", 1},
			{"energy-shield-mk2-equipment", 2},
			{"personal-roboport-mk2-equipment", 2},
			{"personal-laser-defense-equipment", 4},
			{"battery-mk2-equipment", 6},
			{"transport-belt", 1433},
			{"stone-wall", 354},
			{"stone-brick", 124},
			{"stone-furnace"},
			{"inserter", 336},
			{"small-electric-pole", 217},
			{"underground-belt", 190},
			{"long-handed-inserter", 142},
			{"assembling-machine-1", 88},
			{"pipe", 82},
			{"pipe-to-ground", 56},
			{"gun-turret", 52},
			{"iron-chest", 38},
			{"splitter", 20},
			{"lab", 12},
			{"chemical-plant", 9},
			{"gate", 4},
			{"roboport", 3},
			{"oil-refinery", 2},
			{"radar", 1},
			{"storage-tank", 1},
			{"cliff-explosives", 100},
		}
		armor = {
			{"fusion-reactor-equipment"},
			{"fusion-reactor-equipment"},
			{"energy-shield-mk2-equipment"},
			{"energy-shield-mk2-equipment"},
			{"fusion-reactor-equipment"},
			{"personal-roboport-mk2-equipment"},
			{"personal-roboport-mk2-equipment"},
			{"personal-laser-defense-equipment"},
			{"personal-roboport-mk2-equipment"},
			{"personal-roboport-mk2-equipment"},
			{"personal-laser-defense-equipment"},
			{"battery-mk2-equipment"},
			{"battery-mk2-equipment"},
			{"battery-mk2-equipment"},
			{"battery-mk2-equipment"},
			{"battery-mk2-equipment"},
			{"battery-mk2-equipment"},
			{"battery-mk2-equipment"},
			{"night-vision-equipment"},
			{"belt-immunity-equipment"},
			{"solar-panel-equipment"},
		}

		for i, v in pairs(items) do
			player.insert{name = v[1], count = v[2]}
		end

		local grid = player.get_inventory(defines.inventory.character_armor)[1].grid
		for  i, v in pairs(armor) do
			grid.put({name = v[1]})
		end
	end
end)

script.on_event(defines.events.on_cutscene_cancelled, function(event)
	local player = game.players[event.player_index]
	
	local items
	local armor

	items = {
		{"power-armor-mk2", 1},
		{"construction-robot", 150},
		{"spidertron", 1},
		{"spidertron-remote", 1},
		{"fusion-reactor-equipment", 1},
		{"energy-shield-mk2-equipment", 2},
		{"personal-roboport-mk2-equipment", 2},
		{"personal-laser-defense-equipment", 4},
		{"battery-mk2-equipment", 6},
		{"transport-belt", 1433},
		{"stone-wall", 354},
		{"stone-brick", 124},
		{"stone-furnace"},
		{"inserter", 336},
		{"small-electric-pole", 217},
		{"underground-belt", 190},
		{"long-handed-inserter", 142},
		{"assembling-machine-1", 88},
		{"pipe", 82},
		{"pipe-to-ground", 56},
		{"gun-turret", 52},
		{"iron-chest", 38},
		{"splitter", 20},
		{"lab", 12},
		{"chemical-plant", 9},
		{"gate", 4},
		{"roboport", 3},
		{"oil-refinery", 2},
		{"radar", 1},
		{"storage-tank", 1},
		{"cliff-explosives", 100},
	}
	armor = {
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"energy-shield-mk2-equipment"},
		{"energy-shield-mk2-equipment"},
		{"fusion-reactor-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-laser-defense-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-laser-defense-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"night-vision-equipment"},
		{"belt-immunity-equipment"},
		{"solar-panel-equipment"},
	}

	for i, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end

	local grid = player.get_inventory(defines.inventory.character_armor)[1].grid
	for  i, v in pairs(armor) do
		grid.put({name = v[1]})
	end

end)