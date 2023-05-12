--[[
	Script Name		:	SpawnScripts/Antonica/Flores.lua
	Script Purpose	:	Flores
	Script Author	:	Jabantiz, premierio015,Dorbin
	Script Date		:	08/29/2019
	Script Notes	: Updated Dialog Module - Dorbin 05/11/2023
--]]
require "SpawnScripts/Generic/DialogModule"

local DeliveriesForFlores = 5333 -- Deliveries For Flores Quest

function spawn(NPC)
ProvidesQuest(NPC, DeliveriesForFlores)
    SetPlayerProximityFunction(NPC, 13, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
elseif CanReceiveQuest(Spawn,DeliveriesForFlores) then
     PlayFlavor(NPC, "", "", "wave", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Step right up! My wares stand up to any found in the city!  Made by the finest Qeynosian crafters, they are!")
	Dialog.AddVoiceover("voiceover/english/merchant_flores/antonica/merchantflores000.mp3", 149465216, 3128258097)
     PlayFlavor(NPC, "", "", "beckon", 0, 0, Spawn)
   if CanReceiveQuest(Spawn, DeliveriesForFlores) then
    Dialog.AddOption("I'm looking for work. Do you have any tasks that need done? ", "Option1")
	elseif GetQuestStep(Spawn, DeliveriesForFlores) == 3 then
	Dialog.AddOption("I'm back with the pouches.", "Option2")
    end
	Dialog.AddOption("I don't need anything right now, thanks.")
	Dialog.Start()

end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I certainly do. I need to deliver supplies to a couple of my merchants out in the far reaches of Antonica.  Business is so good right now that I hate to close up shop. How would you like to deliver their supplies?")
	Dialog.AddVoiceover("voiceover/english/merchant_flores/antonica/merchantflores001.mp3", 4230827236, 573418930)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("Does it pay well?  Sounds like a pretty decent hike.", "offer")
	Dialog.AddOption("No thanks.  The far reaches sounds further than I'm willing to go.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So you are!  Well done.  Let me take a look at those pouches, and I'll see how much I can afford to pay you.")
	Dialog.AddVoiceover("voiceover/english/merchant_flores/antonica/merchantflores003.mp3", 741997082, 1076579882)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Here you are. ", "Option3")
	Dialog.Start()end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, DeliveriesForFlores, 3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddDialog("Splendid! The merchants are doing very well. Here's your share. Now, why don't you use your reward to buy my fine merchandise?")
	Dialog.AddVoiceover("voiceover/english/merchant_flores/antonica/merchantflores004.mp3", 2648431364, 4291369549)
	Dialog.AddOption("Not at the moment thanks. Perhaps I'll return later to see if you need any further assistance. ")
	Dialog.Start()
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, DeliveriesForFlores)
end









