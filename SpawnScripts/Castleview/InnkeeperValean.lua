--[[
	Script Name	: SpawnScripts/Castleview/InnkeeperValean.lua
	Script Purpose	: Innkeeper Valean <Housing>
	Script Author	: Dorbin
	Script Date	: 2022.01.15
	Script Notes	: 
--]]

local Books = 5453
local Delivery = 5443
local Dinner = 238
local Reservation = 5452
local LostBook = 5468
--dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

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
     if math.random(1, 100) <= 50 then
	    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    end
    end
end
        --
    
function hailed(NPC, Spawn)
    --GenericHail(NPC, Spawn)
--[[    local choice = math.random(1,3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "", "hello", 0, 0, Spawn)
    elseif choice==2 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1012.mp3", "", "bow", 0, 0, Spawn)
    else]]--



    PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/innkeepervalean.mp3", "", "bow",3631971111,2641145010, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if GetQuestStep (Spawn, Delivery) == 1 then 
	AddConversationOption(conversation, "Ganla Dindlenod wants you to take a look at this book.", "BookDelivery")
	end
	if GetQuestStep (Spawn, Dinner) == 1 then 
	AddConversationOption(conversation, "Faeadaen says she must work late tonight and can't make it back for dinner.", "NoDinner")
	end
	if GetQuestStep (Spawn, Reservation) == 1 then 
	AddConversationOption(conversation, "I need to make a room reservation for Taneran.", "KnowTaneran")
	end
	if not HasQuest(Spawn,Books) and not HasCompletedQuest(Spawn,Books) then
	AddConversationOption(conversation, "You have a great number of books in your collection.", "BookCollection")
	end
	if GetQuestStep (Spawn, Books) == 2 then 
	AddConversationOption(conversation, "I found your books being sold in the catacombs.", "FoundBooks")
	end
	if GetQuestStep (Spawn, LostBook) == 2 then 
	AddConversationOption(conversation, "Faeadaen mentioned she left a book of Arbos here. Have you seen it?", "Arbos")
	end
	AddConversationOption(conversation, "I would like to know about a room.", "dlg_2_1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Bed and Book Inn. A fine establishment for recuperating a body and expanding a mind. We have many fine rooms available. Interested, traveler?")
--	StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", I am the Innkeeper for this village. We have received word of your arrival and have a room prepared for you. Would you like to know more about housing?")
end

function Arbos(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Alright. I'll check the shelves for the book.", "ShelfUpdate")
    StartConversation(conversation, NPC, Spawn, "Yes! I've just recently shelved the book on the great tree. Unfortunately, I don't recall where it is amongst my other books. You're welcome to look at my collections upstairs for it.")
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
end

function BookDelivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll let Ganla know. I hope it contains something good!", "UpdateDelivery")
    StartConversation(conversation, NPC, Spawn, "Ah, Yes! Ganla's treasure! I was expecting this. I shall decipher it, but it will take some time. Please inform Ganla I will return the journal as soon as possible.")
 	PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/innkeepervalean005.mp3", "", "agree", 3924782316,102930417 , Spawn)
end

function NoDinner(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/innkeepervalean000.mp3", "", "sigh",4169629165,2563079815, Spawn)
    AddConversationOption(conversation, "I'm sorry to have to deliver the news.", "UpdateDinner")
    StartConversation(conversation, NPC, Spawn, "Again?! That froglok should hire more people so Faeadaen isn't worked to the bone. Thanks for letting me know. I guess I'll dine alone tonight.")
end

function KnowTaneran(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I wan't aware they were to be wed.", "UpdateReservation")
    AddConversationOption(conversation, "I don't really know either of them.", "UpdateReservation")
    StartConversation(conversation, NPC, Spawn, "Ah! Taneran! I know him well! It seems he's in town quite often visiting Listalania. They're quite a pair, arn't they? I suppose when they wed I'll lose his loyal patronage at my inn.")
 	PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/innkeepervalean001.mp3", "", "agree", 3017286284,4228062292 , Spawn)
end

function UpdateReservation(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I will let her know.", "ReservationMade")
    AddConversationOption(conversation, "I must congratulation them!", "ReservationMade")
    AddConversationOption(conversation, "Perhaps don't assume next time. Thank you.", "ReservationMade")
    StartConversation(conversation, NPC, Spawn, "Pardon my indiscretion, friend. I assumed... because you're making his reservation that... you were a close friend of Taneran's. He and I speak sometimes when he retires for the night. Please don't mention this to the Lady. I will see that his room is ready.")
 	PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/innkeepervalean002.mp3", "", "boggle", 1569016427,2379789272 , Spawn)
end

function BookCollection(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "If I see them down there, I'll let you know.", "BookLook")
    AddConversationOption(conversation, "The catacombs? Ew. No.")
    StartConversation(conversation, NPC, Spawn, "I do have many, but I use to have more before hoodlums pilfered my shelves. I heard tales of a merchant in the Down Below selling books... MY BOOKS! I must confirm this before I approach the Qeynos guard.")
 	PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/innkeepervalean003.mp3", "", "agree", 1990579767,1971786194 , Spawn)
end

function BookLook (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Books)
end

function FoundBooks(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm glad I could help.", "BooksDone")
    StartConversation(conversation, NPC, Spawn, "I'll report this to the Qeynos guard! Hopefully they'll lock these criminals up and throw away the key. Thank you for relaying this information. Please, take this small token of my appreciation.")
 	PlayFlavor(NPC, "voiceover/english/innkeeper_valean/qey_village04/innkeepervalean004.mp3", "", "boggle", 4073559800,1910490855 , Spawn)
end

function ShelfUpdate(NPC, Spawn)
    SetStepComplete(Spawn, LostBook, 2)
   end

function UpdateDelivery(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
   end

function UpdateDinner(NPC, Spawn)
    SetStepComplete(Spawn, Dinner, 1)
   end
   
function ReservationMade(NPC, Spawn)
    SetStepComplete(Spawn, Reservation, 1)
   end

function BooksDone(NPC, Spawn)
    SetStepComplete(Spawn, Books, 2)
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



--[[
	PlayFlavor(NPC, "innkeeper_uglar_splinterthumb/qey_village04/innkeeper001.mp3", "", "", 1553251638, 3978555092)
	AddConversationOption(conversation, "How can I place an item in my house?", "dlg_7_1")
	AddConversationOption(conversation, "What kind of housing is available to me?")
	AddConversationOption(conversation, "What is the marketboard for?")
	AddConversationOption(conversation, "What is my house for?")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello there" .. GetName(Spawn) .. ". what can I help you with?")
	--]]