--[[
	Script Name	: SpawnScripts/FrostfangSea/PriestAaronolisSwornlove.lua
	Script Purpose	: Priest Aaronolis Swornlove 
	Script Author	: theFoof
	Script Date	: 2013.09.16
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if GetTempVariable(NPC, "chat_timer") == nil then
		SetTempVariable(NPC, "chat_timer", "1")
		AddTimer(NPC, 25000, "chat_timer")

		local choice = math.random(1,2)

		if choice == 1 then
			PlayFlavor(NPC, "", "Were she still with us, Erollisi would have wanted you to spread love and friendship on this day.", "agree", 0, 0)
		elseif choice == 2 then
			PlayFlavor(NPC, "", "The Fanthom Lord, The Truthbringer, and The Forge Lord all had their hand in establishing this holy place. It is awe inspiring!", "nod", 0, 0)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1054.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Is that a statue of her?", "Chat1")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Cairn of The Huntress, " .. GetName(Spawn) .. "!  Here we remember The Goddess of Love, Erollisi Marr, The Loving Huntress, The Queen of Love, Sister of Light.")
end

function Chat1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "It is not what I would have expected her to look like.", "Chat2")
	AddConversationOption(conversation, "It is pretty.", "Chat4")
	StartConversation(conversation, NPC, Spawn, "It is!  It was sculpted by the Forge Lord, Varig Ro, and presented to Mithaniel Marr prior to Erollisi's self sacrifice.  Varig truly captured her loving presence while still honoring her skill for hunting.")
end

function Chat2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How did it end up here?", "Chat3")
	AddConversationOption(conversation, "I see what you mean.  Good day.")
	StartConversation(conversation, NPC, Spawn, "The deities of Norrath have often shown themselves in different forms, but what's important is that it captured her essence quite well.")
end

function Chat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for sharing this with me.")
	StartConversation(conversation, NPC, Spawn, "Mithaniel blessed us!  He placed it here to share it with the world to serve as a reminder and spiritual inspiration to all.  It reminds us of what she stood for and what there is to continue fighting for.")
end

function Chat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Good day, Priest Swornlove.")
	StartConversation(conversation, NPC, Spawn, "I am glad you think so, too.")
end

function chat_timer(NPC)
	SetTempVariable(NPC, "chat_timer", nil)
end