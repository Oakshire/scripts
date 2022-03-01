--[[
    Script Name    : SpawnScripts/GMHall/abankvault.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.15 11:01:42
    Script Purpose : 
                   : 
--]]

function spawn(Object)
end

function hailed(Object, Spawn)
    AddCoin(Spawn, 1000000)
    SendMessage(Player, "You have been granted coin from the gods.", "yellow")
end

function respawn(Object)
end

