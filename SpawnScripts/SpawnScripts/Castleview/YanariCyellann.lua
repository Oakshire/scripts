--[[
	Script Name	: SpawnScripts/Castleview/YanariCyellann.lua
	Script Purpose	: Yanari Cyellann 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

function spawn(NPC)
	--ProvidesQuest(NPC, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	local choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_multhail1_ba125732.mp3", "I'm very busy and don't want you getting hurt. Please leave me to my work.", "", 2153034813, 3927600348)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/100_researcher_yanari_multhail5_d4faf799.mp3", "Don't touch anything!  You could turn yourself into a goo or destroy the entire building! I'm very busy and don't want you getting hurt. On your way, now!", "", 3857840792, 1030063822)
	end

--[[
	if HasCompletedQuest(Spawn, 1) then
	else
		PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan.mp3", "", "", 3613336528, 1736617695)
		AddConversationOption(conversation, "I brought the claws that you asked for.", "dlg_26_1")
		AddConversationOption(conversation, "You seem to be a bit busy at the moment.  I'll leave you alone.  ")
		StartConversation(conversation, NPC, Spawn, "Do not touch anything!  You could turn yourself into a goo or destroy the entire building.  What do you need?")
	end
--]]
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan002.mp3", "", "", 3385634498, 2633500192)
	AddConversationOption(conversation, "I'll just be under this very thick table.", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Marvelous! I shall use one of the claws to imbue a wand for you. Um ... just take a few steps back, safety and all.")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/yanari_cyellann/qey_village04/yanaricyellan003.mp3", "", "", 3490869984, 2394433819)
	AddConversationOption(conversation, "I plan to be very careful with it.", "dlg_26_3")
	StartConversation(conversation, NPC, Spawn, "It worked!  I mean ... here is a wand for you.  Use it well.")
end