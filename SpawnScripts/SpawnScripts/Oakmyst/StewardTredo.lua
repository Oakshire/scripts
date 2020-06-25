--[[
	Script Name	: SpawnScripts/Oakmyst/StewardTredo.lua
	Script Purpose	: Steward Tredo
	Script Author	: scatman
	Script Date	: 2009.05.08
	Edited by    : ememjr
	edit date     :  2017.05.05
	edit note       : updated quest numbers
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_1 = 232

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	NotAPoacher(NPC, Spawn, conversation)
end

---------------------------------------------------------------------------------------------------------------
--						QUEST 1
---------------------------------------------------------------------------------------------------------------

function NotAPoacher(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/optional1/steward_tredo/qey_adv01_oakmyst/stewardtredo000.mp3", "", "", 2443855119, 308651193, Spawn)

	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "Poachers? What can I do to help?", "OfferQuest1")
	end

	AddConversationOption(conversation, "I wish you luck in avoiding poachers. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Not a poacher, I see. Thank the misty winds! Sorry for thinking otherwise. With all the babble of poachers lurking Oakmyst, I thought for sure your strange face would be the last sight I'd see!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end
