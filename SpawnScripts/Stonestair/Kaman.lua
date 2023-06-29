--[[
	Script Name		: SpawnScripts/StonestairByway/Kaman.lua
	Script Purpose	: Kaman
	Script Author	: torsten
	Script Date		: 2022.07.15
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local Citizenship = 5859
local CasingtheJoint = 5652

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
	Dialog.AddDialog("Hello! Your valuables are safe with Kaman. Trust me.  I'm the last of a long line of bankers. What guild do you belong to?")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood02/bnk_banker_kaman.mp3", 1309348424, 2032495249)
    if GetQuestStep(Spawn, CasingtheJoint) == 1 then
    Dialog.AddOption("It is nice to see the bank so well protected.","Bank1")
    end    
    Dialog.AddOption("Maybe another time.")
	Dialog.Start()
end

function Bank1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("How kind of you! I'm used to sneers and hisses; so kind words are music to my ears. I'm trying to build up the trust of the people ... ever since that rumor it's been very difficult ...")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood04/quests/luciusvulso/kaman_lucius_x1_initial.mp3", 1416971542, 1234122783)
	PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
	Dialog.AddOption("I'm sorry... but what rumor?","Bank2")
	Dialog.Start()
end

function Bank2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah ... Not from around here, are ya? Someone is spreading the rumor that our vault isn't secure.  They say you can tunnel in the vault from the sewers below. But it's preposterous, I tell you, just preposterous! Sorry. I don't mean to digress, friend. Now, are you making a deposit or withdrawal?")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood04/quests/luciusvulso/kaman_lucius_x1_initial2.mp3", 2499658980, 1146756071)
	PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
	Dialog.AddOption("Nothing right now. Thank you.")
    SetStepComplete(Spawn, CasingtheJoint, 1)
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes, you look like the one Valthun described.  Before we can open your account, we need some information from you.  What is your name?")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood02/bnk_banker_kaman006.mp3", 1584899105, 4177190820)
	Dialog.AddOption(""..GetName(Spawn).."","Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What is your occupation?")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood02/bnk_banker_kaman007.mp3", 491324789, 1115007085)
	Dialog.AddOption("Adventurer","Dialog2b")
	Dialog.AddOption("Crafter","Dialog2b")
    if GetRace(Spawn)==3 then
	Dialog.AddOption("Seeker? Of knowledge, obviously.","Dialog2b")
	elseif GetRace(Spawn)==11 then
	Dialog.AddOption("If you put down rat catcher I'll...","Dialog2b")

    end
	Dialog.Start()
end

function Dialog2b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Any surviving relatives, do you ever leave your house unarmed, and are you a deep sleeper?")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood02/bnk_banker_kaman008.mp3", 3429718492, 1776251277)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("No, no, and no.","Dialog2c")
	Dialog.AddOption("[Lie] No, no, and no.","Dialog2c")
	Dialog.AddOption("This does sound concerning!... no!","Dialog2c")
	Dialog.Start()
end

function Dialog2c(NPC, Spawn)
if HasQuest(Spawn,Citizenship) and GetQuestStep(Spawn,Citizenship)==4 then
    SetStepComplete(Spawn, Citizenship,4)
end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("How convenient for you.  Very well ... a place for you within the Freeport Reserve vaults have been set aside . Feel free to deposit large amounts of coin or valuable artifacts with us anytime.  We'll be sure to keep it ... safe.  Will there anything else?")
	Dialog.AddVoiceover("voiceover/english/banker_kaman/fprt_hood02/bnk_banker_kaman009.mp3", 3192376805, 46493799)
	PlayFlavor(NPC, "", "", "smirk", 0, 0, Spawn)
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end
