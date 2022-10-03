--[[
	Script Name	: SpawnScripts/Baubbleshire/DigginDiggs.lua
	Script Purpose	: Diggin Diggs <Armor and Shields>
	Script Author	: Dorbin
	Script Date	: Reconstructed 2022.01.20
	Script Notes	: Using Dialog Module 2022.08.20
--]]
require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local BADGER_PELTS_FOR_DIGGS = 332 -- was 58
local FarSeas_Fifty = 236
local FarSeas_SixtyThree = 237

function spawn(NPC)
	ProvidesQuest(NPC, BADGER_PELTS_FOR_DIGGS)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
 if GetFactionAmount(Spawn,11) >0 then
    if not HasCompletedQuest(Spawn, BADGER_PELTS_FOR_DIGGS) then
        	if math.random(0, 100) <= 75 then
            PlayFlavor(NPC, "voiceover/english/merchant_diggin_diggs/qey_village06/100_merchant_diggin_diggs_callout_5e1e6098.mp3", "Hear ye, hear ye! Digg's Trading Company seeks part-time hunters! Heavy coin handed out!", "", 2413237497, 889891316, Spawn)
            end
        else
    end
end
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else	
 	    FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)

        Dialog.AddDialog("Well hello, friend. I do hate rushin' ya, but I must have that oro root! Bregun's itchin' to make the next batch of brew!")
	    Dialog.AddVoiceover("voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs000.mp3", 96188472, 2463646265)

        if GetQuestStep(Spawn, FarSeas_SixtyThree) == 4 or GetQuestStep(Spawn, FarSeas_Fifty) == 4 then
	    Dialog.AddOption("I believed I've finished your requisition order.", "FarseasDone")
        end
	    
	    Dialog.AddOption("I don't need a sales pitch. Got any work?", "GotAnyWork") 
	    Dialog.AddOptionRequirement(REQ_QUEST_DOESNT_HAVE_QUEST, BADGER_PELTS_FOR_DIGGS)
	    Dialog.AddOptionRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, BADGER_PELTS_FOR_DIGGS)
	    
	    Dialog.AddOption("Here is your bundle of badget pelts.", "BundleOfPelts")
	    Dialog.AddOptionRequirement(REQ_QUEST_ON_STEP, BADGER_PELTS_FOR_DIGGS , 2)
	    
	    Dialog.AddOption("Oh right, I'm still looking for those pelts!")
	    Dialog.AddOptionRequirement(REQ_QUEST_HAS_QUEST, BADGER_PELTS_FOR_DIGGS)
	    Dialog.AddOptionRequirement(REQ_QUEST_BEFORE_STEP, BADGER_PELTS_FOR_DIGGS, 2)
	    
	    Dialog.AddOption("Sorry. Just passing by.")
	    
	    Dialog.Start()
end
end

function GotAnyWork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, you're a worker with no task, eh?  If you're itchin' to fill your pockets with heavy coin, then I have a task for you.  Are you interested in hunting?")
	Dialog.AddVoiceover("voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs001.mp3", 4059634840, 1440996220)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("I'm interested.", "OfferQuest1")
	Dialog.AddOption("I don't have time to hunt.")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, BADGER_PELTS_FOR_DIGGS)
end

function BundleOfPelts(NPC, Spawn)
	SetStepComplete(Spawn, BADGER_PELTS_FOR_DIGGS, 2)

	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Fine work ... fine work!  I must tell you, I just paid my merchant taxes.  'Fraid the coin ain't as heavy as I promised.  Sorry, taxes you know?  I speak the truth!")
	Dialog.AddVoiceover("voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs003.mp3", 2263319370, 3568007530)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("I guess this is better than nothing.")
	Dialog.Start()
end

function FarseasDone(NPC, Spawn)
    if GetQuestStep(Spawn, FarSeas_Fifty) == 4 then 
    SetStepComplete(Spawn, FarSeas_Fifty, 4)
    end
    if GetQuestStep(Spawn, FarSeas_SixtyThree) == 4 then
    SetStepComplete(Spawn, FarSeas_SixtyThree, 4)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Grand work! A bit late, but grand none-the-less. These items will soon become fine garments and armor, Diggs Armor. Thank you, huntsman! Here is the payment for your labor.")
	Dialog.AddVoiceover("voiceover/english/merchant_diggin_diggs/qey_village06/merchantdiggindiggs004.mp3", 1093156454, 3294248254)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.AddOption("I'm glad I could help.")
	Dialog.Start()
end


function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Try to make them high quality pelts!")
	Dialog.AddOption("Ok.")
	Dialog.Start()
end