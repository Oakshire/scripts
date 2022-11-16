--[[
    Script Name    : SpawnScripts/SouthQeynos/Finn.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.15 02:11:40
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    SetRequiredQuest(NPC,5771,1,1,0,0)
end

function InRange(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","You there! You must be the one sent to help! They've all lost their wits!","wave",0,0,Spawn)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The place being torn apart! We were just having a drink is all...")
    PlayFlavor(NPC,"","","confused",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1050.mp3", 0, 0)
    Dialog.AddOption("Calm down and tell me what is going on.", "Dialog2")
	Dialog.AddOption("I'm not going in there!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We were all just having a drink in the Wayfarer's Rest like we do every night. I stepped out for a bit and came back to crashing and smashing from inside. They've all lost it, but I can't tell why.  Even lil' Stimpleweed, who would never hurt a soul, is tearing up the place. Please, you must find a way to settle them down!")
    PlayFlavor(NPC,"","","pout",0,0,Spawn)
	Dialog.AddOption("Alright. I'll investigate.","Door")
	Dialog.AddOption("Did you notice anything odd?","Odd")
	Dialog.Start()
end

function Odd(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There was a shady look'n character who entered earlier, but I thought they had left after their drink... Please, we must figure out how to calm them down!")
    PlayFlavor(NPC,"","","shrug",0,0,Spawn)
	Dialog.AddOption("Alright. I'll investigate.","Door")
	Dialog.Start()
end

function Door(NPC, Spawn)
    SpawnSet(NPC,"heading",194)
    PlayFlavor(NPC,"","The tavern is right there. Please, be careful!","point",0,0,Spawn)
end