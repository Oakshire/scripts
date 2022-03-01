--[[
	Script Name		:	SpawnScripts/FrostfangSea/FlibbitQuagmarr_(shelf).lua
	Script Purpose	:	for the spawn "Flibbit Quagmarr" located in the great shelf cave.
	Script Author	:	theFoof
	Script Date		:	2013.5.30
	Script Notes	:	
--]]
local GreatShelf = 30

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, GreatShelf) == 2 or HasCompletedQuest(Spawn, GreatShelf) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, GreatShelf) == 2 then
		pet = GetTempVariable(Spawn, "splorp")
		if IsAlive(pet) then
			Despawn(pet)
		end
		SetTempVariable(Spawn, "splorp", nil)
		RemoveSpawnAccess(GetSpawnByLocationID(GetZone(Spawn), 5221), Spawn)
		AddSpawnAccess(GetSpawnByLocationID(GetZone(Spawn), 5219), Spawn)
		SetStepComplete(Spawn, GreatShelf, 2)
		conversation = CreateConversation()
		
		PlayFlavor(NPC, "flibbit_quagmarr/halas/gwenevyns_cove/flibbit_quagmarr/flibbit_quagmarr_018.mp3", "", "", 2168167174, 2891640064, Spawn)
		AddConversationOption(conversation, "We've arrived safe and sound!", "Chat1")
		StartConversation(conversation, NPC, Spawn, "Thank you for escorting Splorpy. You do not know how relieved I am! I trust the trip was uneventful?")
	else 
		PlayFlavor(NPC, "", "You made it to the Great Shelf!", "cheer", 0, 0, Spawn)
	end
end

function Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you, Flibbit.")
	AddConversationOption(conversation, "Can I help you further?", "Chat2")
	StartConversation(conversation, NPC, Spawn, "I cannot thank you enough, " .. GetName(Spawn) .. "! You have kept both me and my son safe, and provided for us, time and time again. You deserve both song and praise for all that you have done.")
end

function Chat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "It was no problem. I did not mind it one bit")
	StartConversation(conversation, NPC, Spawn, "I cannot accept any further aid from you, mighty one. I have appreciated it, but you have also shown me that there are some challenges that we must overcome on our own. And for that too, I must thank you! I am sure that we have slowed you from completing your own quest.")
end