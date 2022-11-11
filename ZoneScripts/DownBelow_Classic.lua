--[[
    Script Name    : ZoneScripts/DownBelow_Classic.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.09 03:11:52
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
SendPopUpMessage(Player, "The Down Below", 230, 230, 230)
SendMessage(Player, "You have entered The Down Below.")
SendMessage(Player, "A foul breeze brushes your cheek, as the stench of death envelops you.")
end

