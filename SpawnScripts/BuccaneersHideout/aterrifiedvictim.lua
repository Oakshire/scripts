--[[
    Script Name    : SpawnScripts/BuccaneersHideout/aterrifiedvictim.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 04:12:55
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
SpawnSet(NPC,"name","a terrified victim")
end

function hailed(NPC, Spawn)
local zone = GetZone(NPC)
local Pirate1 = GetSpawnByLocationID(zone, 133781301) --Brigand  
if not IsAlive(Pirate1) then
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Stand away or I ...I ... I'll stick you!")
	Dialog.AddVoiceover("voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gf_2de63779.mp3",600715331, 1815533033)
    PlayFlavor(NPC, "", "", "cringe",0,0 , Spawn, 0)
	Dialog.AddOption("You're safe now. The path should be clear enough to escape.","Dialog1")
	Dialog.Start()
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thanks for saving me...")
	Dialog.AddVoiceover("voiceover/english/anikra/boat_06p_tutorial02_fvo_001.mp3",3802219844, 3242323771)
	PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn, 0)
	Dialog.AddOption("I'm glad I could help.","Update")
	Dialog.Start()
    SpawnSet(NPC,"name","a relieved victim")
    SpawnSet(NPC,"mood_state","0")
end

function Update(NPC,Spawn)
    SetStepComplete(Spawn,5789,1)
    AddTimer(NPC,4000,"Run")
    MoveToLocation(NPC,-7.59, 6.23, 10.49,2)
end

function Run(NPC)
	PlayFlavor(NPC, "", "", "curtsey", 0, 0, Spawn, 0)
    Despawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end