--[[
	Script Name	: SpawnScripts/Baubbleshire/InnkeeperMillbanks.lua
	Script Purpose	: Innkeeper Millbanks <Housing>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	 if math.random(1, 100) <= 40 then
	 local choice = MakeRandomInt(1, 5)
	 FaceTarget(NPC, Spawn)
	  if choice == 1 then
        	FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/innkeeper/halfling_innkeeper_service_good_1_aoi_gf_c2a5eef.mp3", "Welcome to the inn adventurer. Oh, you look absolutely exhausted! Here, let us take your things.", "hello", 802075416,1803478247, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/innkeeper/halfling_innkeeper_service_good_1_hail_gf_dc02003d.mp3", "Good day to you, adventurer. Can I fix you up something to eat?", "hello", 173307143, 4294697063, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/innkeeper/halfling_innkeeper_service_good_1_hail_gf_f9f93f86.mp3", "Many adventurers fresh from the road head straight in to have a hot bath.  Shall I prepare one for you?", "", 2040013753, 171634937, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/innkeeper/halfling_innkeeper_service_good_1_hail_gf_b9a44b08.mp3", "Hello there! Will you be needing a room for the evening?", "hello", 947325689, 1034329857, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/innkeeper/halfling_innkeeper_service_good_1_hail_gf_ff8f2e0b.mp3", "Is there something I can get for you?  Do you need extra towels or a new set of sheets?", "agree", 3981950684, 2391018901, Spawn)
    end
    end   
end	 

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

        PlayFlavor(NPC, "innkeeper_millbanks/qey_village06/innkeeper010.mp3", "", "", 3433721579, 62806591, Spawn)
	--PlayFlavor(NPC, "voiceover/english/innkeeper_millbanks/qey_village06/innkeeper010.mp3", "", "", 3433721579, 62806591, Spawn)
	AddConversationOption(conversation, "Yes, please.", "dlg_2_1")
	AddConversationOption(conversation, "Not right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", I am the Innkeeper for this village.  We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
end

function dlg_2_1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	PlayFlavor(NPC, "innkeeper_millbanks/qey_village06/innkeeper001.mp3", "", "", 4001228290, 3829134373, Spawn)

         AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
        AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
        AddConversationOption(conversation, "How do I sell items using my marketboard?", "dlg_2_5")
        AddConversationOption(conversation, "Are there other places I can live in the city?", "dlg_2_4")
    	AddConversationOption(conversation, "Nevermind for right now, thanks.")
    	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

--	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper002.mp3", "", "", 3750108879, 603350042, Spawn)
    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
    AddConversationOption(conversation, "How do I sell items using my marketboard?", "dlg_2_5")
    AddConversationOption(conversation, "Is this the only place I can live in the city?", "dlg_2_4")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the [place] option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

--	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper007.mp3", "", "", 1015751749, 2650517021, Spawn)

	AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
	AddConversationOption(conversation, "How do I sell items using my marketboard?", "dlg_2_5")
	AddConversationOption(conversation, "Is this the only place I can live in the city?", "dlg_2_4")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
end

function dlg_2_4(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
	--PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper003.mp3", "", "", 3477497917, 3032281679, Spawn)
	    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
	AddConversationOption(conversation, "How do I sell items using my marketboard?", "dlg_2_5")
        AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
		AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Qeynos.  As a show of appreciation, Antonia Bayle has awarded you a one bedroom house for free at this time.")
	end
	
		
function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
    AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
    AddConversationOption(conversation, "Are there other places I can live in the city?", "dlg_2_4")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "The marketboard is a house item, similar to books, beds, pets and other such items. What sets the marketboard apart from the rest however is that once your marketboard is mounted on a wall in your home you can use it to sell items to other citizens of Qeynos.  These items can be purchased by your fellow citizens at a Broker. Brokers can be found in all primary districts of the city as well as in the Tradeskill wholesalers.")
end