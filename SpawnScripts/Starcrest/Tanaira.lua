--[[
	Script Name	: SpawnScripts/Starcrest/Tanaira.lua
	Script Purpose	: Tanaira <Provisioner>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local FAR_SEAS_DR_PBG0162_QUEST_ID = 515
local FAR_SEAS_DR_PBG0295_QUEST_ID = 516

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Oops! Sorry! I thought you were someone else. Please, be on your way now.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/baker/human_baker_service_good_1_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 3151047462, 2904038035, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/baker/human_baker_service_good_1_hail_gf_cca9cdef.mp3", "Welcome friend, welcome.  I hope you brought your appetite with you!", "wink", 488782681, 166399094, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/baker/human_baker_service_good_1_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1068415951, 2036199467, Spawn)
	end
	
	local conversation = CreateConversation()

	if HasQuest(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) == 2 or HasQuest(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) == 3 then
		AddConversationOption(conversation, "I have Far Seas Trading Requisition order PBG0295. ", "Option1")
	end
	AddConversationOption(conversation, "I am just browsing.  I'll let you get back to daydreaming.  ")
	
	StartConversation(conversation, NPC, Spawn, "Oh, hello! Sorry, I didn't see you.  My eyes tend to wander towards Santis over there.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	if HasQuest(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID) == 2 then
		SetStepComplete(Spawn, FAR_SEAS_DR_PBG0162_QUEST_ID, 2)
	end
	if HasQuest(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) and GetQuestStep(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID) == 3 
		SetStepComplete(Spawn, FAR_SEAS_DR_PBG0295_QUEST_ID, 3)
	end
	AddConversationOption(conversation, "Just doing my job. ")
	StartConversation(conversation, NPC, Spawn, "Oh!  Santis has occupied so much of my thoughts that I forgot about this requisition I placed weeks ago.  I may have forgotten but I am glad you did not.")
end
