--[[
    Script Name    : SpawnScripts/qeynos_combined02/JerbenSleepwell.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.25 10:09:46
    Script Purpose : Dialogues for quest "Batwing Crunchies for Jerben", this script is only for Qeynos Combined version of this NPC.
                   : 
--]]

local BatwingCrunchiesforJerben = 5364

function spawn(NPC)
ProvidesQuest(NPC, BatwingCrunchiesforJerben)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
if not HasQuest(Spawn, BatwingCrunchiesforJerben) then
PlayFlavor(NPC, "voiceover/english/innkeeper_jerben_sleepwell/qey_village02/100_innkeeper_callout_ce8f52eb.mp3", "It's been so long since I've had one of my wife's special desserts! I want some crunchies! Will you help me get more crunchies?", "frustrated", 943990017, 651455380, Spawn)
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, BatwingCrunchiesforJerben) and not HasCompletedQuest(Spawn, BatwingCrunchiesforJerben) then
		PlayFlavor(NPC, "jerben_sleepwell/qey_village02/jerbensleepwell003.mp3", "", "hail", 2393164093, 2811776206, Spawn)    
	AddConversationOption(conversation, "What were you just asking?  Something about \"crunchies?\"", "Option1")
	StartConversation(conversation, NPC, Spawn, "Hello fellow patron!")
	elseif GetQuestStep(Spawn, BatwingCrunchiesforJerben) == 1 then
	PlayFlavor(NPC, "", "Ooh...I can't wait for some crunchies!", "manipulate", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, BatwingCrunchiesforJerben) == 2 then
	PlayFlavor(NPC, "voiceover/english/innkeeper_jerben_sleepwell/qey_village02/jerbensleepwell.mp3", "", "wink", 2091561802, 1214350847, Spawn)
	AddConversationOption(conversation, "I've returned with the wings you needed, but they don't look very tasty.", "Option3")
	AddConversationOption(conversation, "I'll keep that in mind...")
	StartConversation(conversation, NPC, Spawn, "If you've come to relax after a long journey, you've come to the right place!")
	elseif HasCompletedQuest(Spawn, BatwingCrunchiesforJerben) then
	PlayFlavor(NPC, "", "Thanks for the wings. They'll make the perfect crunchies!", "thanks", 1689589577, 4560189, Spawn)
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "jerben_sleepwell/qey_village02/jerbensleepwell000.mp3", "", "pout", 811958962, 3230656855, Spawn)
	AddConversationOption(conversation, "I think I could help you out there.", "Option2")
	AddConversationOption(conversation, "Gee, that's a shame.")
	StartConversation(conversation, NPC, Spawn, "Oh, I was just reminiscing about how my lovely wife would bake white batwing crunchies--everyone loved those crunchy treats, but we've run out of albino batwings to make them.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/innkeeper_jerben_sleepwell/qey_village02/jerbensleepwell001.mp3", "", "", 4196072373, 1311386681, Spawn)
	AddConversationOption(conversation, "I'll see what I can do.", "offer")
	StartConversation(conversation, NPC, Spawn, "Really? You'd help me, friend? That's wonderful. I've not had the crunchies in so long; I forget what they taste like. You'll find the albino bats living in the caves near here. Bring back several wings and I'll be forever in your debt.")
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, BatwingCrunchiesforJerben, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/innkeeper_jerben_sleepwell/qey_village02/jerbensleepwell002.mp3", "", "cheer", 3830347004, 2175613137, Spawn)
	AddConversationOption(conversation, "Hey, a little coin is always appreciated.  Thanks!")
	StartConversation(conversation, NPC, Spawn, "Oh, this is wonderful! Really, these were my favorite treats as a child, so they bring back fond memories. I'm forever indebted to you. Please let me pay you a few coins for your trouble.")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, BatwingCrunchiesforJerben)
end



function respawn(NPC)
	spawn(NPC)
end