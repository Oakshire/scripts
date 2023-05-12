--[[
    Script Name    : SpawnScripts/Antonica/SighardSayer.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 06:06:38
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local AFrontiersladysTask = 5528
local Sayer = 5812

function spawn(NPC)
ProvidesQuest(NPC,Sayer)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome, welcome. Please look about. Speak to my merchants; they're quite helpful.")
	Dialog.AddVoiceover("voiceover/english/sighard_sayer/antonica/sighardsayer000.mp3", 2370903667, 1889747783)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	if GetQuestStep(Spawn, AFrontiersladysTask) == 1 then
	Dialog.AddOption("Dancer sent this message to you.", "Option1")
	end
    if CanReceiveQuest(Spawn, Sayer) then
    Dialog.AddOption("How have you been, Mr. Sayer? ", "Quest1")
    elseif  GetQuestStep(Spawn, Sayer) == 5 then 
 	Dialog.AddOption("I delivered the goods, Mr. Sayer. ", "Dialog2")
 	end
	Dialog.AddOption("Thank you. I shall look around.")
	Dialog.Start()
end

function Option1(NPC, Spawn)
    SetStepComplete(Spawn, AFrontiersladysTask, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah! Dancer the frontiersman ... er ... I mean frontierslady as she says. Here, here. This is for her, an arrow like few others, an arrow she is expecting.  ")
	Dialog.AddVoiceover("voiceover/english/sighard_sayer/antonica/sighardsayer001.mp3", 226640630, 2449088928)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("I shall see that she gets the arrow. ")
	Dialog.Start()
end

function Quest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes! You're Dancer's courier. If she's not got ya running around all of Antonica, I sure could use your legs.  ")
	Dialog.AddVoiceover("voiceover/english/sighard_sayer/antonica/sighardsayer002.mp3", 4166112879, 2639972315)
    PlayFlavor(NPC,"","","smile",0,0,Spawn)
	Dialog.AddOption("Sure, Mr. Sayer.", "Quest2")
	Dialog.AddOption("Sorry Mr. Sayer. I have to go.")
	Dialog.Start()
end

function Quest2(NPC, Spawn)
OfferQuest(NPC,Spawn,Sayer)
end

function Dialog2(NPC, Spawn)
    SetStepComplete(Spawn, Sayer, 5)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Quit callin' me Mr. Sayer. Makes me feel as old as Overlord of Freeport! Here's a bit of coin for your tired feet. Maybe we can work together again.")
	Dialog.AddVoiceover("voiceover/english/sighard_sayer/antonica/sighardsayer004.mp3", 3771968860, 1623839270)
    PlayFlavor(NPC,"","","glare",0,0,Spawn)
	Dialog.AddOption("Thank you, Mr. Sayer.","Pout")
	Dialog.Start()
end

function Pout(NPC, Spawn)
    PlayFlavor(NPC,"","","frustrated",0,0,Spawn)
end
function respawn(NPC)
	spawn(NPC)
end