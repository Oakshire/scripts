--[[
	Script Name	: SpawnScripts/Starcrest/InnkeeperJerbenSleepwell.lua
	Script Purpose	: Innkeeper Jerben Sleepwell <Housing>
	Script Author	: Dorbin
	Script Date	: 07.02.2022
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5364)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if  HasCompletedQuest(Spawn,5364)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn, 0)
    end
elseif not HasQuest(Spawn, 5364) and not HasCompletedQuest(Spawn,5364)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/innkeeper_jerben_sleepwell/qey_village02/100_innkeeper_callout_ce8f52eb.mp3", "It's been so long since I've had one of my wife's special desserts! I want some crunchies! Will you help me get more crunchies?", "sigh", 943990017, 651455380, Spawn)
    end
    end
end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasCompletedQuest(Spawn,5346)then
dlg_2_1(NPC, Spawn)
else
Dialog1(NPC, Spawn)
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "pout", 0, 0, Spawn)
	Dialog.AddDialog("Use to be a more pleasant place.  My lovely wife would bake white batwing crunchies-- everyone loved those crunchy treats, but we've run out of albino batwings!")
	Dialog.AddVoiceover("voiceover/english/innkeeper_jerben_sleepwell/qey_village02/jerbensleepwell000.mp3", 2788482206, 4149980298)
 	if not HasCompletedQuest (Spawn, 5364) and not HasQuest (Spawn, 5364) then 
	Dialog.AddOption("I think I could help you out there.", "Dialog2")
    end
    if GetQuestStep (Spawn, 5346)==2 then 
	Dialog.AddOption("I've returned with the wings you needed, but they don't look very tasty.","Delivered")
    end
    Dialog.AddOption("Gee, that's a shame.")
    Dialog.AddOption("I would actually like to know about inn rooms.","dlg_2_1")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "whome", 0, 0, Spawn)
	Dialog.AddDialog("Really? You'd help me, friend? That's wonderful. I've not had the crunchies in so long; I forget what they taste like. You'll find the albino bats living in the caves near here. Bring back several wings and I'll be forever in your debt.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_jerben_sleepwell/qey_village02/jerbensleepwell001.mp3", 4196072373, 1311386681)
	Dialog.AddOption("I'll see what I can do.", "QuestBegin")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5364)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5364, 2)
    PlayFlavor(NPC, "", "", "cheer", 0, 0, Spawn)
	Dialog.AddDialog("Oh, this is wonderful! Really, these were my favorite treats as a child, so they bring back fond memories. I'm forever indebted to you. Please let me pay you a few coins for your trouble.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_jerben_sleepwell/qey_village02/jerbensleepwell002.mp3", 3830347004, 2175613137)
	Dialog.AddOption("Hey, a little coin is always appreciated.  Thanks!")
	Dialog.Start()
end

-- Innkeeper Dialog

function dlg_2_1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
    	conversation = CreateConversation()
    	PlayFlavor(NPC, "innkeeper_millbanks/qey_village06/innkeeper001.mp3", "", "", 4001228290, 3829134373, Spawn)

         AddConversationOption(conversation, "What can I use my house for?", "dlg_2_3")
        AddConversationOption(conversation, "How do I place furniture in my home?", "dlg_2_2")
        AddConversationOption(conversation, "How do I sell items using my marketboard?", "dlg_2_5")
        AddConversationOption(conversation, "Are there other places I can live in the city?", "dlg_2_4")
    	AddConversationOption(conversation, "Nevermind for right now, thanks.")
        if HasCompletedQuest(Spawn,5346)then
    	StartConversation(conversation, NPC, Spawn, "Thanks for the wings. They'll make the perfect crunchies!")
	    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
        else
    	StartConversation(conversation, NPC, Spawn, "What would you like to know?")
        end
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

-- raw_conversations
--	PlayFlavor(NPC, "jerben_sleepwell/qey_village02/jerbensleepwell003.mp3", "", "hail", 2393164093, 2811776206, Spawn)    
--	PlayFlavor(NPC, "voiceover/english/innkeeper_jerben_sleepwell/qey_village02/jerbensleepwell.mp3", "", "wink", 2091561802, 1214350847, Spawn)


