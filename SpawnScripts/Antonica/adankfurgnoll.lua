--[[
    Script Name    : SpawnScripts/Antonica/adankfurgnoll.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.13 05:07:20
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end