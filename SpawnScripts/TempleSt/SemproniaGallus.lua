--[[
    Script Name    : SpawnScripts/TempleSt/SemproniaGallus.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.28 05:06:22
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local Citizenship = 5864

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function InRange(NPC, Spawn)
if HasQuest(Spawn,Citizenship) and GetQuestStep(Spawn,Citizenship)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Are you the one opening the new account?", "bye", 0, 0, Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)

if GetFactionAmount(Spawn,12) <0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
elseif HasQuest(Spawn,Citizenship) and GetQuestStep(Spawn,Citizenship)==4 then
Dialog2(NPC, Spawn)
else
Dialog1(NPC, Spawn)
end
end



function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, you look like the one Valthun described.  Before we can open your account, we need some information from you.  What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_sempronia_gallus/fprt_hood03/bnk_semproniagallus_hail005.mp3", 261268347, 2512652131)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_sempronia_gallus/fprt_hood03/bnk_semproniagallus_hail006.mp3", 1872994041, 2564550567)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==5 then
	Dialog.AddOption("Making things explode... Demolition expert?","Dialog2b")
    elseif GetRace(Spawn)==13 then
	Dialog.AddOption("I can sniff out all the best treasures!","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Any surviving relatives, do you ever leave your house unarmed, and are you a deep sleeper?")
	Dialog.AddVoiceover("voiceover/english/banker_sempronia_gallus/fprt_hood03/bnk_semproniagallus_hail007.mp3", 482951073, 2945397215)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("No, no, and no.","Dialog2c")
	Dialog.AddOption("[Lie] No, no, and no.","Dialog2c")
	Dialog.AddOption("No - Wait... what?","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,Citizenship) and GetQuestStep(Spawn,Citizenship)==4 then
    SetStepComplete(Spawn, Citizenship,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("How convenient for you.  Very well ... we've set aside a place for you within the Freeport Reserve vaults. Feel free to deposit large amounts of coin or valuable artifacts with us anytime.  We'll be sure to keep it ... safe.  Is there anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_sempronia_gallus/fprt_hood03/bnk_semproniagallus_hail008.mp3", 2091439632, 2628015098)
	PlayFlavor(NPC, "", "", "scheme", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is the Freeport Reserve. Please make sure all deposits are in exact change and recognizable currency, thank you.")
	Dialog.AddVoiceover("voiceover/english/banker_sempronia_gallus/fprt_hood03/bnk_semproniagallus_hail.mp3", 2059269441, 1111799165)
	Dialog.AddOption("Thank you.")
	Dialog.Start()
end

