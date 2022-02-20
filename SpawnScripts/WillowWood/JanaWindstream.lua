--[[
	Script Name	: SpawnScripts/WillowWood/JanaWindstream.lua
	Script Purpose	: Jana Windstream 
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: Updated by Jabantiz (4/21/2017)
--]]

local ATaskForDavyn = 215
dofile("SpawnScripts/Generic/EcologyEmotes.lua")

function spawn(NPC)
EcologyEmotes(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, ATaskForDavyn) then
		CartTurnUpAnything(NPC, Spawn, conversation)
	elseif HasQuest(Spawn, ATaskForDavyn) then
		if GetQuestStep(Spawn, ATaskForDavyn) == 2 then
			VisitScribe(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, ATaskForDavyn) > 2 then
			CartTurnUpAnything(NPC, Spawn, conversation)
		else
			ThatsRight(NPC, Spawn)
		end
	else
		ThatsRight(NPC, Spawn)
	end
end

function ThatsRight(NPC, Spawn)
	Say(NPC, "That's Right! Everything you need can be found in the Scribe's Shop!", Spawn)
end

function CartTurnUpAnything(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jana_windstream/qey_village05/quests/jana_windstream/jana_windstream004.mp3", "", "", 708291417, 3807957296, Spawn)
	
	if (HasCompletedQuest(Spawn, ATaskForDavyn)) or (HasQuest(Spawn, ATaskForDavyn) and (GetQuestStep(Spawn, ATaskForDavyn) == 5 or GetQuestStep(Spawn, ATaskForDavyn) == 6)) then
		AddConversationOption(conversation, "Yes, it led me to the rabid wolf.", "GoodStillBreathing")
	end
	
	AddConversationOption(conversation, "It may have.")
	StartConversation(conversation, NPC, Spawn, "Did the cart turn up anything?")
end

function GoodStillBreathing(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I agree.")
	StartConversation(conversation, NPC, Spawn, "Well, it's good to see you still breathing!")
end

function VisitScribe(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jana_windstream/qey_village05/quests/jana_windstream/jana_windstream001.mp3", "", "", 792742459, 2967032366, Spawn)
	AddConversationOption(conversation, "Taval Zane said you may know about a rabid wolf that was near here last night.", "dlg_18_1")
	AddConversationOption(conversation, "Not today, goodbye!")
	StartConversation(conversation, NPC, Spawn, "On your way to visit the scribe?")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jana_windstream/qey_village05/quests/jana_windstream/jana_windstream002.mp3", "", "", 4178186239, 2300907299, Spawn)
	AddConversationOption(conversation, "Did you see it?", "NoIDidntSeeIt")
	AddConversationOption(conversation, "I will return later to discuss this.")
	StartConversation(conversation, NPC, Spawn, "Oh, yes that makes sense.")
end

function NoIDidntSeeIt(NPC, Spawn)
	SetStepComplete(Spawn, ATaskForDavyn, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/jana_windstream/qey_village05/quests/jana_windstream/jana_windstream003.mp3", "", "", 263260883, 1804076359, Spawn)
	AddConversationOption(conversation, "Thanks, I appreciate it.")
	StartConversation(conversation, NPC, Spawn, "No, I didn't see it. But when I got here this morning, the cart over there -- on the northern side of the scribe shop -- looked like someone, or something, had gotten in to it. You might want to check that out.")
end