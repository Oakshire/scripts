--[[
    Script Name    : SpawnScripts/TroubledHaunt/anEnragedspirit2.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.27 04:11:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
--    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function hailed(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Might there be a release from this ... existence?")
	Dialog.AddVoiceover("voiceover/english/ghost_halfling_base_1/ft/ghost/ghost_halfling_base_1_1_death_gm_e09a504d.mp3", 2158192373, 320090825)
	PlayFlavor(NPC, "", "", "beg", 0,0, Spawn, 0)
    Dialog.AddOption("I can't promise freedom, but I give you respect and reverence in your passing.","Thank")	
	Dialog.Start()
end

function InRange(NPC,Spawn)
    AddTimer(NPC,1000,"hailed",1,Spawn)
end

function Thank(NPC,Spawn)
        AddTimer(NPC,2500,"Spirit1",1,Spawn)
        AddTimer(NPC,6000,"Spirit2",1,Spawn)
        AddTimer(NPC,8000,"Absorb",1,Spawn)
		PlayFlavor(NPC, "voiceover/english/ghost_halfling_base_1/ft/ghost/ghost_halfling_base_1_1_halfhealth_gm_2816c2df.mp3", "This doesn't compare to never tasting fine food or ale again!", "thanks", 2582503316, 2897386632, Spawn, 0)
end

function Spirit1(NPC,Spwan)
    zone= GetZone(NPC)
    Ring = GetSpawnByLocationID(zone,133780860)
    ApplySpellVisual(Ring, 571)
    SpawnSet(NPC,"model_type",273)
    SpawnSet(NPC,"visual_state",0)
end

function Spirit2(NPC,Spawn)
    if GetDistance(NPC,Spawn)>1 then
    zone = GetZone(NPC)
    x = GetX(Spawn)
    y = GetY(Spawn)
    z = GetZ(Spawn)
    ApplySpellVisual(NPC,58)
    SpiritNPC = GetSpawnByLocationID(zone,133780861)
    MoveToLocation(SpiritNPC,x,y,z,4,"Spirit2")
    SpiritA = GetSpawnByLocationID(zone,133780862)
    SpiritB = GetSpawnByLocationID(zone,133780863)
    MoveToLocation(SpiritA,x,y,z,4,"Spirit2")
    MoveToLocation(SpiritB,x,y,z,4,"Spirit2")
    MoveToLocation(NPC,x,y,z,4,"Spirit2")
    else
    Absorb(NPC,Spawn)
    end    
end

function Absorb(NPC,Spawn)
    x = GetX(Spawn)
    y = GetY(Spawn)
    z = GetZ(Spawn)
    MoveToLocation(SpiritNPC,x,y,z,4,"Spirit2")
    SpiritA = GetSpawnByLocationID(zone,133780862)
    SpiritB = GetSpawnByLocationID(zone,133780863)
    SpiritNPC = GetSpawnByLocationID(zone,133780861)
    Despawn(SpiritNPC)    
    Despawn(SpiritA)    
    Despawn(SpiritB)    
    ApplySpellVisual(Spawn,57)
end

function respawn(NPC)
	spawn(NPC)
end