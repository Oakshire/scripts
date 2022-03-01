--[[
    Script Name    : SpawnScripts/Commonlands/MasterJaedra.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 08:07:00
    Script Purpose : 
                   : 
--]]

local TheStolenSupplies = 5324

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "", "", 0, 0, Spawn)
	if not HasQuest(Spawn, TheStolenSupplies) and not HasCompletedQuest(Spawn, TheStolenSupplies) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am looking for work.", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Why does one like yourself feel the need to bug someone like me?")
	elseif GetQuestStep(Spawn, TheStolenSupplies) < 6 then
	PlayFlavor(NPC, "", "Hurry back with the supplies, we do not have all month to wait for you.", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, TheStolenSupplies) == 6  then
	QuestComplete(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, TheStolenSupplies) then
	PlayFlavor(NPC, "", "Thank you again for retrieving those stolen supplies.", "bow", 1689589577, 4560189, Spawn)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I guess I could do that for you.", "offer")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Mmmm... I could use some assistance with something I have been working on for the last few days. I need someone to go into the sewer system to the north of here and retrieve some stolen supplies from the goblins there.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheStolenSupplies)
end

function QuestComplete(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, TheStolenSupplies, 6)
ddConversationOption(conversation, "You? At a party?")
StartConversation(conversation, NPC, Spawn, "Thank you, it seems that the ball at the Academy of Arcane Sciences will go on. We have plenty of ale and bread now... Here, take your reward!")
end

function respawn(NPC)
	spawn(NPC)
end