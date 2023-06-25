--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/aFreeportpartisan.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 05:08:02
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local BQCitizen = 5718
local CVQCitizen = 5719
local GQCitizen = 5720
local NQCitizen = 5721
local SCQCitizen = 5722
local WWQCitizen = 5723

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
PlayFlavor(NPC, "","Hello, friend. You look like a sensible Qeynosian!", "", 0,0, Spawn)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayAnimation(NPC,"539")
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Qeynos has all our exits blocked, but perhaps you can find a way to get me through!")
	Dialog.AddVoiceover("voiceover/english/a_freeport_partisan/qey_catacomb_epic01/bribingtraitor000.mp3", 3482178504, 3473502837)
	Dialog.AddOption("How would I do that?", "Dialog2")
	Dialog.AddOption("You must be punished for your crimes!", "AttackTimer")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I made arrangements to transfer my wealth to the Freeport Reserve, but mayhaps I can spare some coins if you let me go.")
	Dialog.AddVoiceover("voiceover/english/a_freeport_partisan/qey_catacomb_epic01/bribingtraitor001.mp3", 4211876752, 3637644957)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("Perhaps.  I need to think upon this further.")
	Dialog.AddOption("I'm not sure I can trust you. You're here as a traitor.", "Dialog3")
	Dialog.AddOption("Coin cannot cover what you've done!", "AttackTimer")
	Dialog.AddOption("No, there can be no bribery.", "AttackTimer")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm not asking you to trust my word ... trust my gold!")
	Dialog.AddVoiceover("voiceover/english/a_freeport_partisan/qey_catacomb_epic01/bribingtraitor002.mp3", 298356076, 2184308899)
    PlayFlavor(NPC,"","","whome",0,0,Spawn)
	Dialog.AddOption("A bribe, eh?  I'm interested.","Fail")
	Dialog.AddOption("Tempting, but I have a duty to Qeynos.  You must face judgement for your deeds.", "AttackTimer")
	Dialog.AddOption("No way!", "AttackTimer")
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

function Fail(NPC,Spawn)
    PlaySound(Spawn,"sounds/ui/ui_warning.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    SendPopUpMessage(Spawn,"One who represents the city of Qeynos does not accept bribes.",255,50,50)
    SendMessage(Spawn,"One who represents the city of Qeynos does not accept bribes.","red")
    AddTimer(NPC,4500,"FailureExit",1,Spawn)
end


function FailureExit(NPC,Spawn)
        if GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then
      BBShire = GetZone("Baubbleshire")
       Zone(BBShire,Spawn,819.46, -20.60, -525.61, 200.47)
       
    elseif GetRace(Spawn)== 0 or GetRace(Spawn)== 2 then
        Gray = GetZone("graystone")
        Zone(Gray,Spawn,865.03, -25.45, -97.91, 357.68)
        
    elseif GetRace(Spawn)== 4 or GetRace(Spawn)== 8 then
        CV = GetZone("castleview")
        Zone(CV,Spawn,729.01, -21.10, -124.36, 290.81)
        
    elseif GetRace(Spawn)== 9 or GetRace(Spawn)== 11 then
        Net = GetZone("nettleville")
        Zone(Net,Spawn,670.07, -20.39, 273.85, 114.78)
        
    elseif GetRace(Spawn)== 3 or GetRace(Spawn)== 8 then
        SC = GetZone("starcrest")
        Zone(SC,Spawn,704.07, -20.38, 264.40, 269.84)
        
    elseif GetRace(Spawn)== 15 or GetRace(Spawn)== 16 or GetRace(Spawn)== 6 then
        WW = GetZone("willowwood")
        Zone(WW,Spawn,809.96, -21.30, -566.02, 323.13)
        
    else
        Net = GetZone("nettleville")
        Zone(Net,Spawn,670.07, -20.39, 273.85, 114.78)
    end
end

function aggro(NPC,Spawn)
     SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"command_primary",11)
    SpawnSet(NPC,"action_state",0)
end

function death(NPC,Spawn)
    if GetSpawn(NPC,8250011) == nil or not IsAlive(NPC,8250011) == false and
    GetSpawn(NPC,8250012) == nil or not IsAlive(NPC,8250012) == false and
    GetSpawn(NPC,8250013) == nil or not IsAlive(NPC,8250013) == false and
    GetSpawn(NPC,8250014) == nil or not IsAlive(NPC,8250014) == false 
    then
        if HasQuest(Spawn,BQCitizen) then
	SetStepComplete(Spawn,BQCitizen,4)
	elseif HasQuest(Spawn,CVQCitizen) then
 	SetStepComplete(Spawn,CVQCitizen,4)
	elseif HasQuest(Spawn,GQCitizen) then
 	SetStepComplete(Spawn,GQCitizen,4)
	elseif HasQuest(Spawn,NQCitizen) then
 	SetStepComplete(Spawn,NQCitizen,4)
	elseif HasQuest(Spawn,SCQCitizen) then
 	SetStepComplete(Spawn,SCQCitizen,4)
	elseif HasQuest(Spawn,WWQCitizen) then
 	SetStepComplete(Spawn,WWQCitizen,4)
 	end    
end
end

function victory(NPC,Spawn)
    AddTimer(NPC,2500,"FailureExit",1,Spawn)
end    