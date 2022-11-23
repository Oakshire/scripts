--[[
    Script Name    : SpawnScripts/qey_epic11_l10_arbor/aFireElemental.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.21 11:11:07
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseFireElemental1.lua")

function spawn(NPC)
AddTimer(NPC,7500,"Visual2")
AddTimer(NPC,6500,"Visual1a")
AddTimer(NPC,4000,"Visual1")
end

function Visual1(NPC,Spawn)
    ApplySpellVisual(NPC,165)
    SpawnSet((GetSpawn(NPC,2180002)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180003)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180004)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180005)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180006)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180007)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180010)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180011)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180015)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180017)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180020)),"visual_state",3120)
    SpawnSet((GetSpawn(NPC,2180023)),"visual_state",3120)
    zone = GetZone(NPC)
    SpawnByLocationID(zone, 133780819)
    SpawnByLocationID(zone, 133780809)
    SpawnByLocationID(zone, 133780810)
    SpawnByLocationID(zone, 133780812)
end

function Visual1a(NPC,Spawn)
    SpawnSet(NPC,"size",35)
end

function Visual2(NPC,Spawn)
    SpawnSet(NPC,"model_type",171)
    SpawnSet(NPC,"faction",1)
    SpawnSet(NPC,"name","an Enraged Fire Elemental")
    SpawnSet(NPC,"targetable",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"attackable",1)
end

function death(NPC,Spawn)
	PerformCameraShake(Spawn, 0.399999988079071)
    SendMessage(Spawn, "The elemental's death triggered the abode's protective enchantment.","white")
    PlaySound(Spawn,"sounds/spells/lightning_burst/thunder_01.wav",(GetX(Spawn)),(GetY(Spawn)),(GetZ(Spawn)))
    SpawnSet((GetSpawn(NPC,2180002)),"visual_state",1861)
    SpawnSet((GetSpawn(NPC,2180003)),"visual_state",0)
    SpawnSet((GetSpawn(NPC,2180004)),"visual_state",1861)
    SpawnSet((GetSpawn(NPC,2180005)),"visual_state",0)
    SpawnSet((GetSpawn(NPC,2180006)),"visual_state",1861)
    SpawnSet((GetSpawn(NPC,2180007)),"visual_state",1861)
    SpawnSet((GetSpawn(NPC,2180010)),"visual_state",0)
    SpawnSet((GetSpawn(NPC,2180011)),"visual_state",0)
    SpawnSet((GetSpawn(NPC,2180015)),"visual_state",0)
    SpawnSet((GetSpawn(NPC,2180017)),"visual_state",1861)
    SpawnSet((GetSpawn(NPC,2180020)),"visual_state",0)
    SpawnSet((GetSpawn(NPC,2180023)),"visual_state",0)  
     zone = GetZone(NPC)
     Despawn(GetSpawnByLocationID(zone, 133780812))
     Despawn(GetSpawnByLocationID(zone, 133780810))
     Despawn(GetSpawnByLocationID(zone, 133780809))
    Despawn(GetSpawnByLocationID(zone, 133780819))
        SpawnByLocationID(zone, 133780816)--BUBBLES
        SpawnByLocationID(zone, 133780817)
        SpawnByLocationID(zone, 133780818)    
        SpawnByLocationID(zone, 133780813)--RAIN
        SpawnByLocationID(zone, 133780814)
        SpawnByLocationID(zone, 133780815)   
        SpawnByLocationID(zone, 133780811) --CLOUD  
        if HasQuest(Spawn, 5775)then
            SetStepComplete(Spawn,5775,1)
        end
        
    end     
function respawn(NPC)
	spawn(NPC)
end