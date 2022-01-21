--[[
	Script Name	: SpawnScripts/Castleview/InnkeeperValean.lua
	Script Purpose	: Innkeeper Valean <Housing>
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

local Delivery = 5443

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if GetQuestStep (Spawn, Delivery) == 1 then 
	AddConversationOption(conversation, "Ganla Dindlenod wants you to take a look at this book.", "BookDelivery")
	end
	AddConversationOption(conversation, "I would like to know about a room.", "dlg_2_1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Bed and Book Inn. A fine establishment for recuperating a body and expanding a mind.")
--	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", I am the Innkeeper for this village. We have received word of your arrival and have a room prepared for you. Would you like to know more about housing?")
end

function BookDelivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll let Ganla know. I hope it contains something good!", "UpdateDelivery")
    StartConversation(conversation, NPC, Spawn, "Ah, Yes! Ganla's treasure! I was expecting this. I shall decipher it, but it will take some time. Please inform Ganla I will return the journal as soon as possible.")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end

function UpdateDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
   end

function dlg_2_1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	PlayFlavor(NPC, "innkeeper_millbanks/qey_village06/innkeeper001.mp3", "", "", 4001228290, 3829134373, Spawn)
        AddConversationOption(conversation, "Are there other places I can live in the city?", "dlg_2_4")
         AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
        AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
    	AddConversationOption(conversation, "Nevermind for right now, thanks.")
    	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
    end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

     AddConversationOption(conversation, "Is this the only place I can live in the city?", "dlg_2_4")
    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "To place an item in your house you must first find the item in your inventory, once you have done so right-click on the item and select the [place] option.  You will then see a tinted outline of your item in your house, when the item is highlighted green you may place it in that location, if it is highlighted red you cannot.")
    end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Is this the only place I can live in the city?", "dlg_2_4")
	AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "You will find that your house has many uses, the first of which is the ability to store house items.  Each house has a limit to the number of house items you can place in it, so as you gain more possessions you wish to display you will need larger houses to do so.")
    end

function dlg_2_4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
	AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
    AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
	AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Qeynos.  As a show of appreciation, Antonia Bayle has awarded you a one bedroom house for free at this time.")
	end

function OfferQuest1(NPC, Spawn)
end

--[[
	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village04/innkeeper001.mp3", "", "", 1553251638, 3978555092)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_7_1")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there" .. GetName(Spawn) .. ". what can I help you with?")
	--]]