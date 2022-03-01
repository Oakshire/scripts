--[[
    Script Name    : SpawnScripts/Nektropos1/aWineRack.lua
    Script Author  : smash
    Script Date    : 2016.09.11 04:09:21
    Script Purpose : 
                   : 
--]]

function casted_on(NPC, Spawn, Message)
	SpawnSet(NPC, "show_command_icon", "0")
	SpawnSet(NPC, "display_hand_icon", "0")
	
	--Random result
	local result = math.random(1,5)
	if result == 1 then
		--20% chance to spawn a fermented elixir
		SendMessage(Spawn, "During your search you knock a bottle off the shelf and a strange liquid begins to stream out of it.")
		SpawnMob(GetZone(NPC), 1780446, 0, GetX(Spawn), GetY(Spawn), GetZ(Spawn))
	else
		SendMessage(Spawn, "You search through the racks but fail to find anything of use.")
	end
end