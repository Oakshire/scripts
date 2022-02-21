--[[
    Script Name    : ZoneScripts/Castleview.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.21 05:02:52
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone,770.58, -17.21, -113.26, 9, "FountOfValor","LeaveLocation")
end

function player_entry(Zone, Player)

end

function FountOfValor(Zone,Player)
      SendPopUpMessage(Player, "Fountain of Valor", 255, 255, 0)
    end