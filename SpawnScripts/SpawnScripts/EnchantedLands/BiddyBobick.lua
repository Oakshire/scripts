--[[
	Script Name	: SpawnScripts/EnchantedLands/BiddyBobick.lua
	Script Purpose	: Biddy Bobick 
	Script Author	: Cynnar
	Script Date	: 2015.02.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/biddy_bobick/enchanted/biddy_bobick000.mp3", "", "cry", 1953488725, 856940273, Spawn)
	AddConversationOption(conversation, "At ease halfling! I am no pirate! ", "dlg_0_1")
	AddConversationOption(conversation, "You're in no condition to talk. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Please spare me, good pirate! Spare me! Take everything! Take everything! Just leave me my life ... my life and ... and ... maybe a fishing pole. My life and a fishing pole. And ... and ... maybe some bait... Ya can't fish without bait!! Spare me! Spare me!")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/biddy_bobick/enchanted/biddy_bobick001.mp3", "", "", 2271087281, 754687626, Spawn)
	AddConversationOption(conversation, "Save you from what? ", "dlg_0_2")
	AddConversationOption(conversation, "I will do what I can. Now I must go.")
	StartConversation(conversation, NPC, Spawn, "Do my halfling eyes deceive me? Brell's toes! A ship without skulls and crossed swords! Welcome! Welcome to Bobick's Boats and the Enchanted Lands. We've been praying to Brell for a ship to save us!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/biddy_bobick/enchanted/biddy_bobick002.mp3", "", "", 2563393725, 4253211022, Spawn)
	AddConversationOption(conversation, "I shall heed your warning and explore this land. Be safe. ", "dlg_7_3")
	StartConversation(conversation, NPC, Spawn, "Danger surrounds us here ... deep in what was once the Misty Thicket. Horrid goblins and beasts infest the land. Should you walk the trails and beyond you'll find them. Be wise, my friend. Travel in a group. That's what we survivors do. And sometimes not even that will save you.")
end
		
function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/biddy_bobick/enchanted/biddy_bobick003.mp3", "", "", 1607211097, 1962573681, Spawn)
	AddConversationOption(conversation, "Glad to see you doing well Biddy. ", "dlg_22_1")
	StartConversation(conversation, NPC, Spawn, "Welcome back to Bobick's Boats, my friend! Neither shattered moons nor beasts from beyond can keep a Bobick out of business.")
end