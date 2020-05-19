--[[
	Script Name	: SpawnScripts/FrostfangSea/SplorpyQuagmarr_(lost).lua
	Script Purpose	: Splorpy Quagmarr lost during the quest Little LostFroglok
	Script Author	: theFoof
	Script Date	: 2013.05.21
	Script Notes	:
--]]

local LostFroglok = 26

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    if GetQuestStep(Spawn, LostFroglok) == 2 then
        PlayFlavor(NPC, "splorpy_quagmarr/halas/gwenevyns_cove/splorpy_quagmarr/splorpy_quagmarr_001.mp3", "", "", 3711049527, 3895860763, Spawn)
	    AddConversationOption(conversation, "Splorpy! It's me, " .. GetName(Spawn) .. ". I'm a friend of your dad's.", "Quest1Chat_1")
	    StartConversation(conversation, NPC, Spawn, "Hello? Who's there?")
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "splorpy_quagmarr/halas/gwenevyns_cove/splorpy_quagmarr/splorpy_quagmarr_002.mp3", "", "", 4266619341, 398836584, Spawn)
	AddConversationOption(conversation, "That I did. How did you get out here?", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "I remember you! You killed the bad bears!")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "splorpy_quagmarr/halas/gwenevyns_cove/splorpy_quagmarr/splorpy_quagmarr_003.mp3", "", "", 3146179411, 3806044983, Spawn)
	AddConversationOption(conversation, "You were frightened by a barbarian?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "I was playing hide and seek with the other kids when a huge man jumped out at us! We screamed and I hopped away as fast as I could!")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "splorpy_quagmarr/halas/gwenevyns_cove/splorpy_quagmarr/splorpy_quagmarr_004.mp3", "", "", 2435575866, 3227047552, Spawn)
	AddConversationOption(conversation, "Well, I'm here to take you back to your dad. I think we should get going before you get any colder.", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "No, " .. GetName(Spawn) .. "! His whole body was a beard! I know what a barbarian looks like and this was not a barbarian.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "splorpy_quagmarr/halas/gwenevyns_cove/splorpy_quagmarr/splorpy_quagmarr_005.mp3", "", "", 3060792386, 2313305125, Spawn)
	AddConversationOption(conversation, "Maybe.", "FollowPlayer")
	StartConversation(conversation, NPC, Spawn, "Okay! Maybe dad will have some hot stew ready!")
end

function FollowPlayer(NPC, Spawn)
    SetStepComplete(Spawn, LostFroglok, 2)
    RemoveSpawnAccess(NPC, Spawn)
	local pet = SpawnMob(GetZone(NPC), 4701835, 0, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
	SetTempVariable(Spawn, "splorp", pet)
    SetFollowTarget(pet, Spawn)
	ToggleFollow(pet)
end

function SpawnAccess(NPC, Spawn)
    if GetQuestStep(Spawn, LostFroglok) == 2 then
	    AddSpawnAccess(NPC, Spawn)
	end
end