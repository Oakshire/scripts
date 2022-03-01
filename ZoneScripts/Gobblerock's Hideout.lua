--[[
    Script Name    : ZoneScripts/Gobblerock's Hideout.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 03:07:56
    Script Purpose : 
                   : 
--]]

TheSewerItKey = 5321

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
SendPopUpMessage(Player, "Gobblerock's Hideout", 230, 230, 230)
if GetQuestStep(Player, TheSewerItKey) == 1 then
SetStepComplete(Player, TheSewerItKey)
end
    end

