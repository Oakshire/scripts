--[[
	Script Name	: SpawnScripts/WillowWood/TavalZane.lua
	Script Purpose	: Taval Zane 
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: Updated by Jabantiz (4/21/2017)
--]]

local ATaskForDavyn = 215

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, ATaskForDavyn) then
		IsItDeadYet(NPC, Spawn, conversation)
	elseif HasQuest(Spawn, ATaskForDavyn) then
		if GetQuestStep(Spawn, ATaskForDavyn) == 1 then
			GoodDay(NPC, Spawn, conversation)
		else
			IsItDeadYet(NPC, Spawn, conversation)
		end
        else
    	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/taval_zane/qey_village05/quests/taval_zane/taval_zane001.mp3", "Good day. I see you've chosen the safety of indoors too!", "", 1526657502, 3373773349, Spawn)
	--	Say(NPC, "I'm really not in the mood to chat right now, friend.", Spawn)
	end
end

function GoodDay(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/taval_zane/qey_village05/quests/taval_zane/taval_zane001.mp3", "", "", 1526657502, 3373773349, Spawn)
	AddConversationOption(conversation, "Are you the one who reported seeing the rabid wolf?", "YesThatWasMe")
	AddConversationOption(conversation, "We can speak of this later, I must be going.")
	StartConversation(conversation, NPC, Spawn, "Good day. I see you've chosen the safety of indoors too!")
end

function YesThatWasMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/taval_zane/qey_village05/quests/taval_zane/taval_zane002.mp3", "", "", 2737126508, 2185825783, Spawn)
	AddConversationOption(conversation, "Where were you when you saw it?", "JustOutside")
	AddConversationOption(conversation, "I will return later to discuss this.")
	StartConversation(conversation, NPC, Spawn, "Yes, that was me. I think I'll wait it out in here, where it's safe.")
end

function JustOutside(NPC, Spawn)
	SetStepComplete(Spawn, ATaskForDavyn, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/taval_zane/qey_village05/quests/taval_zane/taval_zane003.mp3", "", "", 2766240445, 2864858945, Spawn)
	AddConversationOption(conversation, "Thank you for your information.")
	StartConversation(conversation, NPC, Spawn, "Just outside the inn last night! I ran inside as fast as I could when I saw it. It chased me -- oh, it was certainly aggressive, but I managed to make it inside and close the door. When I peeked out later, it was heading toward the scribe. Talk to Jana Windstream; she always spends time outside the scribe's place.  If she's still...alive!")
end

function IsItDeadYet(NPC, Spawn, conversation)
	if (HasCompletedQuest(Spawn, ATaskForDavyn)) or (HasQuest(Spawn, ATaskForDavyn) and (GetQuestStep(Spawn, ATaskForDavyn) == 5 or GetQuestStep(Spawn, ATaskForDavyn) == 6)) then
		AddConversationOption(conversation, "Yes, the beast has been put down.", "AhWonderful")
	end
	
	AddConversationOption(conversation, "No it is still alive.")
	StartConversation(conversation, NPC, Spawn, "Is it dead yet?")
end

function AhWonderful(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Ah, wonderful! If you can't feel safe in your own home where can you feel safe. Thank you.")
end