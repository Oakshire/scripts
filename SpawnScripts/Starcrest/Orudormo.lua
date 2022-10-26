--[[
    Script Name    : SpawnScripts/Starcrest/Orudormo.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.24 04:02:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Deposit = 5490

function spawn(NPC)

end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "heckno", 0, 0, Player)	
    else    
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Don't worry about the safety of your assets. We meticulously manage our accounts and currancy.")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo.mp3", 3443069835,648383583)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)	
    if GetQuestStep(Spawn, Deposit)==1 then     
	Dialog.AddOption("I'm here to make a deposit for Grekin.", "Deposit1")
    end
    Dialog.AddOption("That is good to know.")
	Dialog.Start()
end 
end

 function Deposit1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I thought he'd make the deposit, but I suppose it doesn't matter who does it as long as it gets to the bank. Do you need anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_orudormo/qey_village02/bankerorudormo000.mp3", 3783803084,3333586894)
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)	
	Dialog.AddOption("I need the recpit. Thank you.", "Deposit2")
	Dialog.Start()
end 

function Deposit2(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)	
    SetStepComplete(Spawn, Deposit, 1)
end


function respawn(NPC)
	spawn(NPC)
end