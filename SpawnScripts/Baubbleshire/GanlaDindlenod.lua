--[[
	Script Name	: SpawnScripts/Baubbleshire/GanlaDindlenod.lua
	Script Purpose	: Ganla Dindlenod 
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: Upated using Dialog Module & faction check - 2022.08.20 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5443

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
ProvidesQuest(NPC, Delivery)
end


function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11) <0 then -- Faction Check
        choice = math.random(1,2)
        if choice ==1 then
        FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
        else
        FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
        end
else
    if math.random(1, 100) <= 85 then
    if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then -- Quest Check
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/ganla_dindlenod/qey_village06/100_ganla_dindlenod_callout_4ce3dea4.mp3", "Oh, if only I could make heads or tails of this book. It must be a a recipe for a fine elven pie! Oh, hello traveler! Could you spare a moment?", "confused", 3548248258, 2969193046, Spawn)
    else -- POST Quest greeting
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
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then -- Faction Check
        choice = math.random(1,2)
        if choice ==1 then
        FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
        else
        FaceTarget(NPC, Spawn)
        PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
        end
else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What brings you to the fair vale of Baubbleshire? Seeking a bit of merriment among the stouts?")
	Dialog.AddVoiceover("voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod000.mp3", 3896153477, 1476133189)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
 	if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
    Dialog.AddOption("I'm actually asking around for work.", "Book")
    end
    if GetQuestStep (Spawn, Delivery) == 1 then
    Dialog.AddOption("Oh right, I was on my way to Castleview to deliver this book for you.  Goodbye!")
    end
    if GetQuestStep (Spawn, Delivery) == 2 then
    Dialog.AddOption("I gave Valean your book. He will return it when he is finished.", "Delivered")
    end
    Dialog.AddOption("Looking around, mostly. Perhaps for some of that merriment you spoke of.")
	Dialog.Start()
end
end

 function Book(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can offer you a task. Recently, I procured this book. I believe it is valuable, possibly a recipe for rare fruit pie!")
	Dialog.AddVoiceover("voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod001.mp3", 1482635271, 2842583444)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Well now I am interested!  Where does it need to go?", "PieBook")
	Dialog.AddOption("I mispoke.  I actually must be going.")
	Dialog.Start()
end   

 function PieBook(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It appears the tattered journal is written in some form of elven-gibberish. You must deliver the book to Innkeeper Valean in Castleview Hamlet. He may be able to decipher the writing.")
	Dialog.AddVoiceover("voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod002.mp3", 3973037194, 3834426438)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("I would be happy to deliver your book.  I'll take it to Castleview.", "QuestBegin")
	Dialog.AddOption("That is a bit out of the way, and I'm enjoying it here so much already.  Sorry!")
	Dialog.Start()
end   

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Delivery)
end

 function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 2)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Valean is a good man! It was safer giving him the book instead of Yanari. She'd take it and never give it back! She thinks she's the keeper of ALL elven knowledge! Hah! Good day and thank you for your service friend!")
	Dialog.AddVoiceover("voiceover/english/ganla_dindlenod/qey_village06/ganladindlenod003.mp3", 1364619617, 3264445365)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("I'm glad I could help.")
	Dialog.Start()
end   




