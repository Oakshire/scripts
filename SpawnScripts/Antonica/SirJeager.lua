--[[
    Script Name    : SpawnScripts/Antonica/SirJeager.lua
    Script Author  : Premierio015,Dorbin
    Script Date    : 2021.08.10 09:08:50
    Script Purpose : 
                   : Updated using Dialog Module - Dorbin 05/12/2023
--]]
require "SpawnScripts/Generic/DialogModule"

local GettingTheAxe = 5334 -- Getting the Axe Quest
local SabertoothBattlePlans = 5335 -- Sabertooth Battle Plans Quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, SabertoothBattlePlans) then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings! Can I help you with something?")
	Dialog.AddVoiceover("voiceover/english/sir_jeager/antonica/sirjeager000.mp3", 3221404151, 3230765792)
    if HasCompletedQuest(Spawn, GettingTheAxe) and not HasCompletedQuest(Spawn, SabertoothBattlePlans) then
	Dialog.AddOption("I would like to help with the campaign against the Sabertooth.", "Option1")
    end
    if HasCompletedQuest(Spawn, GettingTheAxe) then
	Dialog.AddOption("I'm just looking around.", "Option0")
    end
    Dialog.AddOption("No thank you.")
	Dialog.Start()
	
	elseif HasQuest(Spawn, SabertoothBattlePlans) then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You have the battle plans?")
	Dialog.AddVoiceover("voiceover/english/sir_jeager/antonica/sirjeager005.mp3", 1410263883, 2325716326)
	if GetQuestStep(Spawn, SabertoothBattlePlans) == 2 then
	Dialog.AddOption("Yes, here they are.", "Option2")
    end
	Dialog.AddOption("Not yet, but soon.")
	Dialog.Start()
   end
end

function Option0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, be careful, or the Sabertooth clan will have you for dinner.")
	Dialog.AddVoiceover("voiceover/english/sir_jeager/antonica/sirjeager004.mp3", 3285899250, 1646181505)
	Dialog.AddOption("I will watch my back.")
	Dialog.Start()
end		


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Really? Ahh, yes... You are the one that Squire Kivan was talking about. I do have something for you to do -- that is, if you are interested.")
	Dialog.AddVoiceover("voiceover/english/sir_jeager/antonica/sirjeager001.mp3", 1175262455, 1051406685)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("I am interested.", "offer")
	Dialog.AddOption("I am not interested right now.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, SabertoothBattlePlans, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hrmm...This is terrible news. Tomorrow I will write a report and send it to town with Squire Kivan. I am sure that the Royal Antonican Guard will know what to do. Reporting the Sabertooth's plans may save hundreds of lives. Antonica is indebted to you for your service, adventurer. Thank you.")
	Dialog.AddVoiceover("voiceover/english/sir_jeager/antonica/sirjeager006.mp3", 923179982, 4001844374)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("Anything to help.")
	Dialog.Start()
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, SabertoothBattlePlans)
end



function respawn(NPC)
	spawn(NPC)
end