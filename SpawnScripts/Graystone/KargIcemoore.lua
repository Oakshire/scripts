--[[
	Script Name	: SpawnScripts/Graystone/KargIcemoore.lua
	Script Purpose	: Karg Icemoore 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheMotleyMerchantManifest = 5368

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/icemoore/qey_village03/icemoore000.mp3", "", "no", 2067185427, 1499529819, Spawn)
	if GetQuestStep(Spawn, TheMotleyMerchantManifest) == 5 then
	AddConversationOption(conversation, "I believe you need to sign this manifest. ", "Option1")
	end
	AddConversationOption(conversation, "I'll look around.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Frozen Tundra, finest brewhall in all of Qeynos--no--finest brewhall in all of Norrath!! Belly up to Coppershot. He'll get yer order.")
end


function Option1(NPC, Spawn)
    SetStepComplete(Spawn, TheMotleyMerchantManifest, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/icemoore/qey_village03/icemoore001.mp3", "", "frustrated", 3923754329, 1864701403, Spawn)
	AddConversationOption(conversation, "I will be leaving now.")
	StartConversation(conversation, NPC, Spawn, "Brell save me! Keep that book lowered. I don't need the Guard marchin' in and findin' me doing business with yer type. ")
end

