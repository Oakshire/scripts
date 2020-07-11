--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyJumbelly.lua
	Script Purpose	: Deputy Jumbelly 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Have you noticed the way Deputy Huckfar has been making eyes at Deputy Nettlebrine?", "peer", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I wonder if Huckfar still has some of those tasty sandwiches.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Hello there!", "wave", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "A jumjum ale would be nice right about now.", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "deputy_jumbellly/enchanted/quests/solo_content/deputy_jumbelly001.mp3", "", "", 2522937541, 3670519443, Spawn)
		AddConversationOption(conversation, "Why is that?", "dlg_11_1")
	StartConversation(conversation, NPC, Spawn, "I wish I could have gotten a post inside one of the wagons.")
	if convo==15 then
		PlayFlavor(NPC, "deputy_jumbellly/enchanted/quests/solo_content/deputy_jumbelly001.mp3", "", "", 2522937541, 3670519443, Spawn)
		AddConversationOption(conversation, "Why is that?", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "I wish I could have gotten a post inside one of the wagons.")
	end

end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_jumbellly/enchanted/quests/solo_content/deputy_jumbelly002.mp3", "", "", 3483236705, 1460604675, Spawn)
		AddConversationOption(conversation, "I'm sorry to hear that, Deputy Jumbelly", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Well... Standing out here in the sun isn't all that much fun, this armor is itchy, and I'm hungry.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_jumbellly/enchanted/quests/solo_content/deputy_jumbelly003.mp3", "", "", 3687989073, 1584040796, Spawn)
		AddConversationOption(conversation, "Have you seen anything strange in the river?", "dlg_11_3")
	StartConversation(conversation, NPC, Spawn, "It's ok.  What can I do for you?")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "deputy_jumbellly/enchanted/quests/solo_content/deputy_jumbelly004.mp3", "", "", 2018147760, 2209988563, Spawn)
		AddConversationOption(conversation, "I don't think he'll be much of a problem anymore.  Thanks for your time.", "dlg_11_4")
	StartConversation(conversation, NPC, Spawn, "There's been a goblin terrorizing the area for a week now.  I guess that could be strange.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Have you noticed the way Deputy Huckfar has been making eyes at Deputy Nettlebrine?", "peer", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "I wonder if Huckfar still has some of those tasty sandwiches.", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Hello there!", "wave", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "A jumjum ale would be nice right about now.", "", 1689589577, 4560189, Spawn)
--]]

