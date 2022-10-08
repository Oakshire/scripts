--[[
	Script Name	: SpawnScripts/Antonica/FarmerWalcott.lua
	Script Purpose	: Farmer Walcott 
	Script Author	: geordie0511
	Script Date	: 2019.03.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ThereMite = 458
local TheHalfEatenOrderSlip = 5520
local CrudeMap = 5644

function spawn(NPC)
	ProvidesQuest(NPC, ThereMite)
end

function respawn(NPC)
	spawn(NPC)
end


require "SpawnScripts/Generic/DialogModule"

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh! My poor crops! What will I do with all these ravenous beetles scurrying about?")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott000.mp3", 1905672247, 2052203858)
	if HasQuest(Spawn, ThereMite) == false and HasCompletedQuest(Spawn, ThereMite) == false then
	Dialog.AddOption("Sounds like you need a beetle charmer. ", "Dialog6")
    end
    if GetQuestStep(Spawn,TheHalfEatenOrderSlip)==1 then
	Dialog.AddOption("I found this slip with your name on it. ", "Dialog14")
    end
    if GetQuestStep(Spawn,TheHalfEatenOrderSlip)==3 then
	Dialog.AddOption("You have two less scarecrows.", "Dialog11")
    end
   if GetQuestStep(Spawn,ThereMite)==2 then
	Dialog.AddOption("I have done my best.", "Dialog17")
    end
   if GetQuestStep(Spawn,CrudeMap)==1 then
    Dialog.AddOption("I found this map on a gnoll. ", "Dialog2")
    end
    if GetQuestStep(Spawn,TheHalfEatenOrderSlip)==6 then
 	Dialog.AddOption("I have brought you your components.", "Dialog8")
    end
    Dialog.AddOption("I am sorry I cannot help you. Farewell.")
	Dialog.Start()
    PlayFlavor(NPC,"","","sigh",0,0,Spawn)
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Just a minute here ... this looks like a child's sketch of me fields! Just what was this gnoll doing? ")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott007.mp3", 2816178732, 3621841778)
	Dialog.AddOption("The gnoll was creating scarecrows, evil ones! ", "Dialog18")
	Dialog.AddOption("I don't want to get involved. Farewell. ")
	Dialog.Start()
    PlayFlavor(NPC,"","","confused",0,0,Spawn)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,ThereMite)
end


function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A beetle charmer would be grand -- if there were such a thing. I would be satisfied just hiring an adventurer to stomp a bunch of the beetles. Oh my poor barley!")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott001.mp3", 2875116766, 2106137000)
    if GetLevel(Spawn) >=6 then
	Dialog.AddOption("Then today is your lucky day. Here I am! ", "Dialog3")
    end
	Dialog.AddOption("If I see any I will send them your way. Farewell.")
	Dialog.Start()
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, CrudeMap, 6)
	Dialog.AddDialog("Fantastic! Now I can bring to life a good scarecrow, one who I can place in the fields and who will destroy the evil ones! ")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott010.mp3", 3414706112, 3583405611)
	Dialog.AddOption("I am glad I could help. ")
	Dialog.Start()
    PlayFlavor(NPC,"","","smile",0,0,Spawn)
end


function Dialog11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, TheHalfEatenOrderSlip, 3)
	Dialog.AddDialog("Thank you for your help, adventurer. There was no way a simple farmer could face such creatures and live. Now maybe I can get some work done around here.  ")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott006.mp3", 3891109775, 3345154753)
	Dialog.AddOption("Farewell, farmer. ")
	Dialog.Start()
    PlayFlavor(NPC,"","","thanks",0,0,Spawn)
end


function Dialog13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, TheHalfEatenOrderSlip, 1)
	Dialog.AddDialog("You can handle the wilderness better than a simple farmer. I'll need a few components. Collect them for me so I can begin my plan.  ")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott009.mp3", 970639118, 3821730719)
	Dialog.AddOption("I will collect the items.")
	Dialog.Start()
end

function Dialog14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I saw a moat rat chewing that slip this morning. I thought I would never get it back! You must be an amazing hero to face moat rats with such ease!")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott004.mp3", 1213446973, 2066498477)
	Dialog.AddOption("It's all in a day's work for us adventurers.  ", "Dialog16")
	Dialog.AddOption("I don't have time to chat with you.")
	Dialog.Start()
end


function Dialog16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can use a person with your strength and bravado. See those evil looking scarecrows in my fields? I sure would appreciate it if you would get rid of 'em for me.")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott005.mp3", 3107851027, 3585937746)
	Dialog.AddOption("I will hack a couple down for you.")
	Dialog.Start()
end

function Dialog17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes! You did a great job, adventurer! The crops live another day. Please take this for your kind deeds. ")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott003.mp3", 2680820592, 3831371965)
	Dialog.AddOption("Not a problem. Anything for an Antonican.")
	Dialog.Start()
	SetStepComplete(Spawn,ThereMite,2)
    PlayFlavor(NPC,"","","clap",0,0,Spawn)
end

function Dialog18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aha! Recently, my scarecrows came to life with fierce rage! I had no idea how this happened. I think I know how I can fight it. ")
	Dialog.AddVoiceover("voiceover/english/farmer_walcott/antonica/farmerwalcott008.mp3", 1206894627, 4263746663)
	Dialog.AddOption("I'll help you any way I can. ", "Dialog13")
	Dialog.AddOption("You must fight it without me. Farewell.")
	Dialog.Start()
end

