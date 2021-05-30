--[[
    Script Name    : ZoneScripts/Bloodskull5.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.29 09:05:35
    Script Purpose : 
                   : 
--]]

local TheTrainingGrounds = 5247

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
if HasQuest(Player, TheTrainingGrounds) then
SetStepComplete(Player, TheTrainingGrounds, 1)
end
   end
