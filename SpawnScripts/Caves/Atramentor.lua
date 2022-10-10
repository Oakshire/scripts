--[[
    Script Name    : SpawnScripts/Caves/Atramentor.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.05 11:10:33
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

function spawn(NPC)
end

function aggro(NPC,Spawn)
    SpawnSet(NPC, "visual_state", 0)
end

function respawn(NPC)
	spawn(NPC)
end