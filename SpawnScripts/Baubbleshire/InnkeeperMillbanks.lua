--[[
	Script Name	: SpawnScripts/Baubbleshire/InnkeeperMillbanks.lua
	Script Purpose	: Innkeeper Millbanks <Housing>
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

	PlayFlavor(NPC, "voiceover/english/innkeeper_millbanks/qey_village06/innkeeper010.mp3", "", "", 3433721579, 62806591, Spawn)
	AddConversationOption(conversation, "Yes, please.", "dlg_2_1")
	AddConversationOption(conversation, "Not right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", I am the Innkeeper for this village.  We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
end

function dlg_2_1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    AddConversationOption(conversation, "Are there other places I can live in the city?", "dlg_2_4")
    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
	AddConversationOption(conversation, "Nevermind for right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	--PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper002.mp3", "", "", 3750108879, 603350042, Spawn)
     AddConversationOption(conversation, "Is this the only place I can live in the city?", "dlg_2_4")
    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
		AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the [place] option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

--	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper007.mp3", "", "", 1015751749, 2650517021, Spawn)
	    AddConversationOption(conversation, "Is this the only place I can live in the city?", "dlg_2_4")
	AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
		AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_2_4(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
	--PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper003.mp3", "", "", 3477497917, 3032281679, Spawn)
	    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
		AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Qeynos.  As a show of appreciation, Antonia Bayle has awarded you a one bedroom house for free at this time.")
	end