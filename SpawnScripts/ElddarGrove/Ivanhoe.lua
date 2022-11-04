--[[
    Script Name    : SpawnScripts/ElddarGrove/Ivanhoe.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.04 04:11:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end

function respawn(NPC)
	spawn(NPC)
end