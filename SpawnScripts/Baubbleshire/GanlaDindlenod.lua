--[[
	Script Name	: SpawnScripts/Baubbleshire/GanlaDindlenod.lua
	Script Purpose	: Ganla Dindlenod 
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: 
--]]

local Delivery = 5443

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end


function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 75 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
    FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "voiceover/english/ganla_dindlenod/qey_village06/100_ganla_dindlenod_callout_4ce3dea4.mp3", "Oh, if only I could make heads or tails of this book. It must be a a recipe for a fine elven pie! Oh, hello traveler! Could you spare a moment?", "confuse", 3548248258, 2969193046, Spawn)
     else
         choice = math.random(1,2)
         if choice ==1 then
         FaceTarget(NPC, Spawn)
         PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        else
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
         end
    end
    end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod000.mp3", "", "hello", 3896153477, 1476133189, Spawn)
 	if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
    AddConversationOption(conversation, "I'm actually asking around for work.", "Book")
    end
    if GetQuestStep (Spawn, Delivery) == 2 then
    AddConversationOption(conversation, "I gave Valean your book. He will return it when he is finished.", "Delivered")
    end
    AddConversationOption(conversation, "Looking around, mostly. Perhaps for some of that merriment you spoke of.")
    StartConversation(conversation, NPC, Spawn, "What brings you to the fair vale of Baubbleshire? Seeking a bit of merriment among the stouts?")
end

 function Book(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod001.mp3", "", "agree", 1482635271, 2842583444, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Where does it need to go?", "PieBook")
  StartConversation(conversation, NPC, Spawn, "I can offer you a task. Recently I procured this book. Possibly the recipe for a rare FRUIT pie!")
end   

 function PieBook(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod002.mp3", "", "", 3973037194, 3834426438, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "I would be happy to deliver your book.  I'll take it to Castleview.", "QuestBegin")
AddConversationOption(conversation, "That is a bit out of the way, and I'm enjoying it here so much already.  Sorry!")
  StartConversation(conversation, NPC, Spawn, "It appears the tattered journal is written in some form of elven-gibberish. You must deliver the book to Innkeeper Valean in Castleview Hamlet. He may be able to decipher the writing.")
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
  conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod003.mp3", "", "", 1364619617, 3264445365, Spawn)
  AddConversationOption(conversation, "I'm glad I could help.", "Reward")
  StartConversation(conversation, NPC, Spawn, "Valean is a good man! It was safer giving him the book instead of Yanari. She'd take it and never give it back! She thinks she's the keeper of ALL elven knowledge! Hah! Good day and thank you for your service friend!")
end   

function Reward(NPC, Spawn)
    	SetStepComplete(Spawn, Delivery, 2)
    end



