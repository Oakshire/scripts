--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/TavithiNsari.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 06:08:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local BBQCitizen = 5718
local CVQCitizen = 5719
local GQCitizen = 5720
local NQCitizen = 5721
local SCQCitizen = 5722
local WWQCitizen = 5723

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
PlayFlavor(NPC, "","No!  Please don't hurt me!", "cringe", 0,0, Spawn)
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
	Dialog.AddDialog("I swear, I didn't do anything!  The guards pulled me from my home and beat me!  I just want to go home!")
	Dialog.AddVoiceover("voiceover/english/tavithi_n_sari/qey_catacomb_epic01/tavithinsari000.mp3", 4098142648, 4182661778)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Wait a minute... they beat you?", "Dialog2")
	Dialog.AddOption("You're saying you don't belong down here?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes!  You must believe me!  I was minding my own business, when they came for me!  I wasn't even near the Ironforge Estate!")
	Dialog.AddVoiceover("voiceover/english/tavithi_n_sari/qey_catacomb_epic01/tavithinsari001.mp3", 3040294218, 711712198)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("Well for that, I'm sorry you had to endure it.  Wait here until I've made my decision.")
	Dialog.AddOption("Err, who said anything about the Ironforges?", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You did!  Just a second ago, don't you remember?")
	Dialog.AddVoiceover("voiceover/english/tavithi_n_sari/qey_catacomb_epic01/tavithinsari002.mp3", 2424577779, 2139550412)
    PlayFlavor(NPC,"","","stare",0,0,Spawn)
	Dialog.AddOption("Did I?  It must have slipped my mind.")
	Dialog.AddOption("I never said anything of the sort.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You fool!  You should've let me go when you had the chance!  Prepare to be a stain on the floor of Innoruuk's realm!")
	Dialog.AddVoiceover("voiceover/english/tavithi_n_sari/qey_catacomb_epic01/tavithinsari003.mp3", 3211336740, 2450849190)
    PlayFlavor(NPC,"","","cackle",0,0,Spawn)
    SpawnSet(NPC,"mood_state",11852)
	Dialog.AddOption("...", "AttackTimer")
	Dialog.Start()
end

function AttackTimer(NPC,Spawn)
    AddTimer(NPC,1200,"Attacking",1,Spawn)
end

function Attacking(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
    Attack(NPC,Spawn)
end

function aggro(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
end

function death(NPC,Spawn)
	if HasQuest(Spawn,BQCitizen) then
	SetStepComplete(Spawn,BQCitizen,7)
	elseif HasQuest(Spawn,CVQCitizen) then
 	SetStepComplete(Spawn,CVQCitizen,7)
	elseif HasQuest(Spawn,GQCitizen) then
 	SetStepComplete(Spawn,GQCitizen,7)
	elseif HasQuest(Spawn,NQCitizen) then
 	SetStepComplete(Spawn,NQCitizen,7)
	elseif HasQuest(Spawn,SCQCitizen) then
 	SetStepComplete(Spawn,SCQCitizen,7)
	elseif HasQuest(Spawn,WWQCitizen) then
 	SetStepComplete(Spawn,WWQCitizen,7)
 	end    
 end