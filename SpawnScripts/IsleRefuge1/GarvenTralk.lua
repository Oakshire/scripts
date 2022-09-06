--[[
    Script Name    : SpawnScripts/IsleRefuge1/GarvenTralk.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.05 05:09:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
--SetPlayerProximityFunction(NPC, 22, "QuestInRange", "QuestLeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02/garventralk001.mp3", "If we don't get refugees with some degree of skill soon we'll have to pull out of here.", "nod", 1755275352, 190331174, Spawn, 0)
end

function InRange(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/garven_tralk/tutorial_island02_fvo_onaoienter.mp3", "You there! Stop standing around like a drunken sailor and get over here!", "beckon", 4010256509, 3318344012, Spawn, 0)
end    

function respawn(NPC)
	spawn(NPC)
end