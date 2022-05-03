--[[
    Script Name    : SpawnScripts/Antonica/DaryannStormrider.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 09:08:45
    Script Purpose : 
                   : 
--]]

local TheBalanceOfLife = 5349

function spawn(NPC)
ProvidesQuest(NPC, TheBalanceOfLife)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetDeity(Spawn) == 1 then
	if not HasQuest(Spawn, TheBalanceOfLife) and not HasCompletedQuest(Spawn, TheBalanceOfLife) then
	Option1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheBalanceOfLife) == 1 then
	Quest_Progress(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheBalanceOfLife) == 4 then
	Option4(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, TheBalanceOfLife) then
	Quest_Finished(NPC, Spawn)
end
elseif GetDeity(Spawn) ~= 1 then
PlayFlavor(NPC, "", "...", "", 0, 0, Spawn)
Emote(NPC, "doesn't wish to speak with you.")
end
end





function respawn(NPC)
	spawn(NPC)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann001.mp3", "", "", 2350021449, 2306066877, Spawn)
	AddConversationOption(conversation, "Do you need help with anything?", "Option2")
	AddConversationOption(conversation, "Luckily, I am busy with other tasks. ")
	StartConversation(conversation, NPC, Spawn, "I watch over the woodlands and keep nature in balance. Sometimes it's an unpleasant and difficult task, but without hunters, the hunted would overrun our land.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann002.mp3", "", "", 3412334991, 3636507740, Spawn)
	AddConversationOption(conversation, "Sounds like that would suit me well.", "Option3")
	AddConversationOption(conversation, "Maybe I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Each village has someone who decides which creatures' numbers need culling and what populations are stable. I'm the representative for Windstalker Village. If you wish to help me, I will gladly assign you some tasks.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann003.mp3", "", "smile", 1849804125, 150143999, Spawn)
	AddConversationOption(conversation, "I will return.", "offer")
	StartConversation(conversation, NPC, Spawn, "Sometimes a population grows rapidly, and we must hunt weak and sickly creatures to ensure others in the population remain healthy. Other times, predators disrupt nature's balance. I need you to hunt sea turtles and darkclaw crabs near our shores and any red tail hawks you come across here in Antonica.  Please return to me when you finish.")
end

function Quest_Progress(NPC, Spawn)
PlayFlavor(NPC, "", "Good luck on your hunt, Gaikako.", "", 1689589577, 4560189, Spawn)
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, TheBalanceOfLife, 4)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann010.mp3", "", "", 1284135083, 2776970357, Spawn)
	AddConversationOption(conversation, "Your request is done.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Have you dealt with the creatures?")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann011.mp3", "", "", 1936168502, 3017543852, Spawn)
	AddConversationOption(conversation, "Thank you, Daryann.")
	StartConversation(conversation, NPC, Spawn, "Thank you for your services.  You proved to be a valuable member of the community here in Windstalker Village. Good luck in your future endeavors.  Please take this small token of our appreciation.")
end


function Quest_Finished(NPC, Spawn)
PlayFlavor(NPC, "", "Thanks to your help.  The populations in Antonica are somewhat stabilized.  At least, for now.", "", 1689589577, 4560189, Spawn)
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheBalanceOfLife)
end

