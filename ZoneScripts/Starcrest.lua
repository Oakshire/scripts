--[[
    Script Name    : ZoneScripts/Starcrest.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.30 03:06:27
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 771.06, -18.49, 281.01, 15, "DeepReflection","LeaveLocation")
end

function player_entry(Zone, Player)
      SendPopUpMessage(Player, "Starcrest Commune", 230, 230, 230)
end

function DeepReflection(Zone,Player)
      SendPopUpMessage(Player, "The Fountain of Deep Reflection", 255, 255, 0)
    end

function enter_location(zone, spawn, grid)
	SetLocationProximityFunction(Zone, 771.06, -18.49, 281.01, 10, "DeepReflection","LeaveLocation")
end