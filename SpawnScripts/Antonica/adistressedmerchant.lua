--[[
    Script Name    : SpawnScripts/Antonica/adistressedmerchant.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.12 08:08:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "I beg of you to help me.  These foul beasts have blocked off my escape.  Help me out and I'll help you in return.", "notworthy", 1689589577, 4560189, Spawn)
end