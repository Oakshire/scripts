--[[
    Script Name    : SpawnScripts/Commonlands/TeceraValnos.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.12 09:05:26
    Script Purpose : 
    Script Notes   :  Added movement
--]]

function spawn(NPC)
MovementLoopAddLocation(NPC, 563.48, -42.51, 696.01, 2, 10)
MovementLoopAddLocation(NPC, 589.12, -47.48, 686.90, 2, 10)
MovementLoopAddLocation(NPC, 573.82, -43.50, 682.51, 2, 10)
MovementLoopAddLocation(NPC, 573.94, -43.60, 683.56, 2, 10)
MovementLoopAddLocation(NPC, 566.29, -42.44, 688.84, 2, 10)
MovementLoopAddLocation(NPC, 582.57, -46.43, 692.85, 2, 10)
MovementLoopAddLocation(NPC, 575.42, -46.81, 717.76, 2, 10)
MovementLoopAddLocation(NPC, 577.93, -47.27, 719.13, 2, 10)
MovementLoopAddLocation(NPC, 580.85, -45.08, 684.22, 2, 10)
MovementLoopAddLocation(NPC, 570.90, -46.07, 717.06, 2, 10)
MovementLoopAddLocation(NPC, 577.86, -45.04, 691.07, 2, 10)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am "..GetName(Spawn)..". Feralis sent me to offer my help.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Make it quick, I am quite busy.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What business?")
	StartConversation(conversation, NPC, Spawn, "It's about time he sent help. I've nearly lost the band of Bloodskulls I'm tracking and now this business with the Ruins of Val'marr.")
end


function respawn(NPC)
	spawn(NPC)
end