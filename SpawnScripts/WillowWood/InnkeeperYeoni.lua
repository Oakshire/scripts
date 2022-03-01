--[[
	Script Name	: SpawnScripts/WillowWood/InnkeeperYeoni.lua
	Script Purpose	: Innkeeper Yeoni <Housing>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

local Message = 5479

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 70 then
        choice = math.random(1,2)
         if choice ==1 then
         PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        else
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
         end
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/innkeeper_yeoni/qey_village05/innkeeper010.mp3", "", "", 57172292, 1639146546, Spawn)
	if GetQuestStep(Spawn, Message)==1 then
	   AddConversationOption(conversation, "I have this note from Jendan at the docks.  He wanted to know if his brother has stopped in today.","MessageUpdate")
    end
	--if not HasQuest(Spawn, HOUSE_QUEST) then
	--	AddConversationOption(conversation, "Please.", "OfferQuest1")
	--end
	AddConversationOption(conversation, "Yes, please.", "dlg_2_1")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ". I am the Innkeeper for this village.  We have received word of your arrival and have a room prepared for you.  Would you like to know more about housing?")
end

function OfferQuest1(NPC, Spawn)
end


 function MessageUpdate(NPC, Spawn)
    PlayFlavor(NPC, "","", "sigh", 1068773246, 2639950014, Spawn)
    FaceTarget(NPC,Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I hope so too.  I'll let him know that there wasn't any message left for him today.  ", "UpdateMessage")
  StartConversation(conversation, NPC, Spawn, "Oh, the poor dear.  He asks at least twice a day if I've seen his brother.  Unfortunately, I've no message for him. I do hope poor Jendan finds him soon.")
end   


function UpdateMessage(NPC, Spawn)
    	SetStepComplete(Spawn, Message, 1)
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

--	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper002.mp3", "", "", 3750108879, 603350042, Spawn)
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
PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village06/innkeeper003.mp3", "", "", 3477497917, 3032281679, Spawn)
	    AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
		AddConversationOption(conversation, "That's enough for now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Many different kinds of housing are available in the city of Qeynos.  As a show of appreciation, Antonia Bayle has awarded you a one bedroom house for free at this time.")
	end   
-- this stuff below goes in the accepted function of the quest
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