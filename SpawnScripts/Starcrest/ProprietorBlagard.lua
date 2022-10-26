--[[
	Script Name	: SpawnScripts/Starcrest/ProprietorBlagard.lua
	Script Purpose	: Proprietor Blagard 
	Script Author	: John Adams, premierio015
	Script Date	: 2008.09.23, modified on 03.10.2021
	Script Notes	: Added quest dialogues
--]]
require "SpawnScripts/Generic/DialogModule"

local AnIntriguingEye = 5366
local TheMotleyMerchantManifest = 5368

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Step up to the bar, my friend. Never has coin been better spent.")
	Dialog.AddVoiceover("voiceover/english/proprietor_blagard/qey_village02/blagard000.mp3", 3622450968, 3253656744)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)	
	if GetQuestStep(Spawn, AnIntriguingEye) == 7 then
	Dialog.AddOption("I am looking for the coin you swiped from Penwiggle.  ", "Option1")
	elseif GetQuestStep(Spawn, TheMotleyMerchantManifest) == 4 then
	Dialog.AddOption("I believe you need to sign this manifest. ", "Option5")
    end
	Dialog.AddOption("No thanks")
	Dialog.Start()
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You'd be wise to forget about that coin. It'll lead you to nothing but trouble and a one-way ticket to the tower of Ethernere.")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo001.mp3",1118118280, 1928490568)
    PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)	
	Dialog.AddOption("I earned that coin. Where is it? ", "Option2")
	Dialog.AddOption("What coin? Farewell.")
	Dialog.Start()
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My associates said you'd be persistent. They instructed me to tell you that if you ever procure another coin, they'll be waiting for you beyond the hand in the Down Below.")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo002.mp3",2782696877, 1213798417)
    PlayFlavor(NPC, "", "", "", 0, 0, Spawn)	
	Dialog.AddOption("Who are your associates? ", "Option4")
	Dialog.Start()
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, AnIntriguingEye, 7)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I prefer to keep my supply of rarities flowing, so I'll keep my mouth shut about that. As far as I know, you might be a mole of Constable Arathur.")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo003.mp3",2943536645, 2598970112)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)	
	Dialog.AddOption("Constable Arathur you say? Thanks and farewell.")
	Dialog.Start()
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, TheMotleyMerchantManifest, 4)
    SetStepComplete(Spawn, AnIntriguingEye, 7)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You again! I see the Hand has made use of you rather than making a training dummy outta you. Now, shove off before the guards come waltzing over to see what all the hush hush is about.")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo004.mp3",732322808, 602463247)
    PlayFlavor(NPC, "", "", "duck", 0, 0, Spawn)	
	Dialog.AddOption("I'll be going now.")
	Dialog.Start()
end





