--[[
    Script Name    : ZoneScripts/TheDisconcertingMeditation.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.21 03:11:31
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
EnterMessage(Zone,Player)
SpawnSet(Player,"visual_state",496)

end

function EnterMessage(Zone,Player)
    SendMessage(Player, "You feel that the meditation will only last a short time. You must hurry!","yellow")
    SendPopUpMessage(Player, "You feel that the meditation will only last a short time. You must hurry!",250,250,250)
    PlaySound(Player,"sounds/ui/ui_warning.wav", GetX(Player), GetY(Player), GetZ(Player))
end
