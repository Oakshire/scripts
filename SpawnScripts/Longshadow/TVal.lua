--[[
	Script Name		: SpawnScripts/LongshadowAlley/TVal.lua
	Script Purpose	: T`Val
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local ForThatSpecialSomeone = 5673
local Citizenship = 5862

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if HasQuest(Spawn,Citizenship) and GetQuestStep(Spawn,Citizenship)==4 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/banker_quintius_calacicus/fprt_hood1/100_bankerquintiuscalacicus_housing_quest_1_22bf58bf.mp3", "Are you the one opening the new account?", "bye", 1249171681, 483955197, Spawn)
end
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

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail to you.  Currency exchange, secure storage of goods, I offer a range of services tailored to the needs of Freeport guild members.")
	Dialog.AddVoiceover("voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval.mp3", 90970771, 1252206294)
    if GetQuestStep(Spawn, ForThatSpecialSomeone) == 1 then
	Dialog.AddOption("Your wife asked me to bring you this bottle of wine.","Wine")
    end
    Dialog.AddOption("I'll keep that in mind.")
	Dialog.Start()
end

function Wine(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("She did? Why? Well... let me see that wine! Hmmm... my favorite. It smells normal. I guess it's all right, then.  Tell her that I will thank her when I next see her. I'll... um... be working late again tonight, so tell her not to wait up.")
	Dialog.AddVoiceover("voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval006.mp3", 415080394, 1146938462)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("I will let her know...")
    SetStepComplete(Spawn, ForThatSpecialSomeone, 1)
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, you look like the one Valthun described.  Before we can open your account, we need some information from you.  What's your name?")
	Dialog.AddVoiceover("voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval006.mp3", 973761594, 631533180)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval007.mp3", 3366909671, 2696654878)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==1 then
	Dialog.AddOption("A purveyor of all things forbiden, so I guess Adventurer of sorts?","Dialog2b")
	elseif GetRace(Spawn)==17 then
	Dialog.AddOption("I'm still waiting for you Teir'Dal to sort all that out...","Dialog2b")
	elseif GetRace(Spawn)==19 then
	Dialog.AddOption("Blood sucker doesn't really a job, but it is.","Dialog2b")
    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Any surviving relatives, do you ever leave your house unarmed, and are you a deep sleeper?")
	Dialog.AddVoiceover("voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval008.mp3", 77874907, 3978664262)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("No, no, and no.","Dialog2c")
	Dialog.AddOption("[Lie] No, no, and no.","Dialog2c")
	Dialog.AddOption("What are with these questions?! Just... no!","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,Citizenship) and GetQuestStep(Spawn,Citizenship)==4 then
    SetStepComplete(Spawn, Citizenship,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("How convenient for you.  Very well ... we've set aside a place for you within the Freeport Reserve vaults. Feel free to deposit large amounts of coin or valuable artifacts with us anytime.  We'll be sure to keep it ... safe.  Is there anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_t_val/fprt_hood05/bnk_banker_tval009.mp3", 3196985272, 4183310653)
	PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end