--[[
	Script Name	: SpawnScripts/Castleview/InnkeeperValean.lua
	Script Purpose	: Innkeeper Valean <Housing>
	Script Author	: Dorbin
	Script Date	: 2022.01.15
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local Books = 5453
local Delivery = 5443
local Dinner = 238
local Reservation = 5452
local LostBook = 5468

function spawn(NPC)
ProvidesQuest(NPC,Books)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")

end

function respawn(NPC)
	spawn(NPC)
end

function InRange (NPC,Spawn)
    if not HasQuest(Spawn, LostBook) and not HasCompletedQuest(Spawn, LostBooks) then 
        if math.random(1, 100) <= 70 then
        PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/100_innkeeper_valean_callout_9071232c.mp3", "Welcome to the Bed and Book Inn. A fine establishment for recuperating a body and expanding a mind.", "hello", 1080804291, 518202081, Spawn)
        end
    else
     if math.random(1, 100) <= 60 then
	local choice = MakeRandomInt(1,5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_1/ft/service/innkeeper/highelf_innkeeper_service_good_1_hail_gm_ff8f2e0b.mp3", "Is there something I can get for you.  Do you need extra towels or a new set of sheets?", "shrug", 3357488044, 3163163637, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/100_innkeeper_valean_callout_9071232c.mp3", "Welcome to the Bed and Book Inn, a fine establishment for recuperating the body and expanding the mind.  ", "bow", 1080804291, 518202081, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_1/ft/service/innkeeper/highelf_innkeeper_service_good_1_hail_gm_df81b278.mp3", "Will you be needing a room for the evening?", "hello", 3897504580, 3514026923, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/highelf_eco_good_1/ft/service/innkeeper/highelf_innkeeper_service_good_1_hail_gm_f9f93f86.mp3", "Many adventurers fresh from the road, head straight in to have a hot bath.  Shall I prepare one for you?", "wink", 2107402357, 2798748961, Spawn, 0)    end
    end
    end
end
        --
    
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome to the Bed and Book Inn. A fine establishment for recuperating a body and expanding a mind. We have many fine rooms available. Interested, traveler?")
	Dialog.AddVoiceover("voiceover/english/innkeeper_valean/qey_village04/innkeepervalean.mp3", 3631971111,2641145010)
    PlayFlavor(NPC, "", "", "bow",0,0, Spawn)
	if GetQuestStep (Spawn, Delivery) == 1 then 
    Dialog.AddOption("Ganla Dindlenod wants you to take a look at this book.", "BookDelivery")
	end
	if GetQuestStep (Spawn, Dinner) == 1 then 
	Dialog.AddOption("Actually, I am here to deliver a message to you from Faeadaen.  She has to work late and won't be able to dine with you tonight.", "NoDinner")
	end
	if GetQuestStep (Spawn, Reservation) == 1 then 
	Dialog.AddOption("I need to make a room reservation for Taneran.", "KnowTaneran")
	end
	if not HasQuest(Spawn,Books) and not HasCompletedQuest(Spawn,Books) then
	Dialog.AddOption("You have a great number of books in your collection.", "BookCollection")
	end
	if GetQuestStep (Spawn, Books) == 2 then 
	Dialog.AddOption("I found your books being sold in the catacombs.", "FoundBooks")
	end
	if GetQuestStep (Spawn, LostBook) == 2 then 
	Dialog.AddOption("Faeadaen mentioned she left a book of Arbos here. Have you seen it?", "Arbos")
	end
	Dialog.AddOption("Yes.", "dlg_2_1")
	Dialog.AddOption("I am not interested in a room at this time.")
	Dialog.Start()
end

function Arbos(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Alright. I'll check the shelves for the book.")
    StartConversation(conversation, NPC, Spawn, "Yes! I've just recently shelved the book on the Great Tree. Unfortunately, I don't recall where it is amongst my other books. You're welcome to look at my collections upstairs for it.")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end

function BookDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, Yes! Ganla's treasure! I was expecting this. I shall decipher it, but it will take some time. Please inform Ganla I will return the journal as soon as possible.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_valean/qey_village04/innkeepervalean005.mp3", 3924782316,102930417)
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
    Dialog.AddOption( "I'll let Ganla know. I hope it contains something good!")
	Dialog.Start()
end

function NoDinner(NPC, Spawn)
    SetStepComplete(Spawn, Dinner, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Again?! That froglok should hire more people so Faeadaen isn't worked to the bone. Thanks for letting me know. I guess I'll dine alone tonight.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_valean/qey_village04/innkeepervalean000.mp3", 4169629165,2563079815)
 	PlayFlavor(NPC, "", "", "sigh", 0,0 , Spawn)
    Dialog.AddOption( "There is always tomorrow.")
	Dialog.Start()
end

function KnowTaneran(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah! Taneran! I know him well! It seems he's in town quite often visiting Listalania. They're quite a pair, arn't they? I suppose when they wed I'll lose his loyal patronage at my inn.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_valean/qey_village04/innkeepervalean001.mp3", 3017286284,4228062292)
 	PlayFlavor(NPC, "", "", "nod", 0,0 , Spawn)
    Dialog.AddOption("That seems like their business, not mine.", "UpdateReservation")
    Dialog.AddOption("I don't really know them well.", "UpdateReservation")
    Dialog.Start()
end

function UpdateReservation(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Pardon my indiscretion, friend. I assumed... because you're making his reservation that... you were a close friend of Taneran's. He and I speak sometimes when he retires for the night. Please don't mention this to the Lady. I will see that his room is ready.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_valean/qey_village04/innkeepervalean002.mp3", 1569016427,2379789272)
 	PlayFlavor(NPC, "", "", "boggle", 0,0 , Spawn)
    Dialog.AddOption( "I will let her know.", "ReservationMade")
    Dialog.AddOption( "I must congratulation them!", "ReservationMade")
    Dialog.AddOption( "Perhaps don't assume next time. Thank you.", "ReservationMade")
	Dialog.Start()
end

function BookCollection(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I do have many, but I use to have more before hoodlums pilfered my shelves. I heard tales of a merchant in the Down Below selling books... MY BOOKS! I must confirm this before I approach the Qeynos guard.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_valean/qey_village04/innkeepervalean003.mp3", 1990579767,1971786194)
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
    Dialog.AddOption( "If I see them down there, I'll let you know.", "BookLook")
    Dialog.AddOption( "The catacombs? Ew. No.")
	Dialog.Start()
end

function BookLook (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Books)
end

function FoundBooks(NPC, Spawn)
    SetStepComplete(Spawn, Books, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll report this to the Qeynos guard! Hopefully they'll lock these criminals up and throw away the key. Thank you for relaying this information. Please, take this small token of my appreciation.")
	Dialog.AddVoiceover("voiceover/english/innkeeper_valean/qey_village04/innkeepervalean004.mp3", 4073559800,1910490855)
 	PlayFlavor(NPC, "", "", "shakefist", 0,0 , Spawn)
    Dialog.AddOption( "I'm glad I could help.")
	Dialog.Start()
end

   
function ReservationMade(NPC, Spawn)
    SetStepComplete(Spawn, Reservation, 1)
   end


function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What would you like to hear about?")
	Dialog.AddVoiceover("innkeeper_valean/qey_village04/innkeeper001.mp3", 1533786955, 1790782886)
	Dialog.AddOption("How can I place an item in my house?", "dlg_2_2")
	Dialog.AddOption("What kind of housing is available to me?", "dlg_2_4")
	Dialog.AddOption("What is the marketboard for?")
	Dialog.AddOption("What is my house for?", "dlg_2_3")
	Dialog.AddOption("I see you have many books. ")
	Dialog.AddOption("Nothing right now.")
	Dialog.Start()
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



--[[
	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village04/innkeeper001.mp3", "", "", 1553251638, 3978555092)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_7_1")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there" .. GetName(Spawn) .. ". what can I help you with?")
	--]]