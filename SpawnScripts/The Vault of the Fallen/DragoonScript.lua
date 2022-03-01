--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/DragoonScript.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.18 02:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function prespawn(NPC)
SetSpawnAnimation(NPC, 13016) -- skeleton spawn animation
end

function respawn(NPC)
	spawn(NPC)
end