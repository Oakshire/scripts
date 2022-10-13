--[[
    Script Name    : ZoneScripts/classic_caves.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.01 02:09:55
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone,50.47, 1.65, -47.31, 8, "LostMiners","LeaveLocation")
end

function player_entry(Zone, Player)
      SendPopUpMessage(Player, "The Caves", 255, 255, 255)
end

function LostMiners(Zone,Player)
      SendPopUpMessage(Player, "The Cavern of Lost Miners", 255, 255, 0)
    end