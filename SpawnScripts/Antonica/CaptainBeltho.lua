--[[
	Script Name	: SpawnScripts/Antonica/CaptainBeltho.lua
	Script Purpose	: Captain Beltho 
	Script Author	: geordie0511
	Script Date	: 2019.03.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Gnoll = 471

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_beltho/antonica/captainbeltho000.mp3", "", "", 3094633969, 1366545559, Spawn)
	if GetQuestStep(Spawn, Gnoll) == 1 then
		PlayFlavor(NPC, "voiceover/english/captain_beltho/antonica/captainbeltho001.mp3", "", "", 637123636, 1668683266, Spawn)
		AddConversationOption(conversation, "I don't want to go back to Eitoa empty-handed. ", "dlg_9_2")
		AddConversationOption(conversation, "Fine. I'll do whatever it takes.", "dlg_9_2")
		StartConversation(conversation, NPC, Spawn, "I have no report, because there's nothing to report. We've had no luck finding the hidden entrance to the gnolls' lair. I need more time and more men to track them down.")
		SetStepComplete(Spawn, Gnoll, 1)
	elseif GetQuestStep(Spawn, Gnoll) == 3 then
		AddConversationOption(conversation, "It seems the gnolls do indeed have a lair where you mentioned.", "dlg_0_1")
		AddConversationOption(conversation, "I'm not on official business.")
		StartConversation(conversation, NPC, Spawn, "On your way -- unless you're here on official business.  I've got enough work here for ten men, and only two at my disposal!")
		SetStepComplete(Spawn, Gnoll, 3)
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_beltho/antonica/captainbeltho003.mp3", "", "", 4118902248, 2953766683, Spawn)
	AddConversationOption(conversation, "Thank you for the report. I will return it to Eitoa at once.")
	StartConversation(conversation, NPC, Spawn, "Well done indeed! I'll finish the report, along with your description of the area, and you may take it to Captain Eitoa. ")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_beltho/antonica/captainbeltho002.mp3", "", "", 1781496850, 130411923, Spawn)
	AddConversationOption(conversation, "I'll have the place searched out as quickly as possible.")
	StartConversation(conversation, NPC, Spawn, "I appreciate your help. I'd like you to search the most southern lands. One of our scouts mentioned seeing gnolls in the area, and another scout mentioned a number of bridges connecting the islands. It's probably another dead end, but if you do find the gnoll lair, return to me and I'll finish the report.")
end