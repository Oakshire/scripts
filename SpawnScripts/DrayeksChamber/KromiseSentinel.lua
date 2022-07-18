--[[
    Script Name    : SpawnScripts/DrayeksChamber/KromiseSentinel.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end