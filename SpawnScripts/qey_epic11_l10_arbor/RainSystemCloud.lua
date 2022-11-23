--[[
    Script Name    : SpawnScripts/qey_epic11_l10_arbor/RainSystemCloud.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.22 02:11:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,12000,"DespawnSystem2")
AddTimer(NPC,10500,"DespawnSystem1")
end



function respawn(NPC)
	spawn(NPC)
end

function DespawnSystem1(NPC,Spawn)
     zone = GetZone(NPC)
        Despawn(GetSpawnByLocationID(zone, 133780813))--RAIN
        Despawn(GetSpawnByLocationID(zone, 133780814))
        Despawn(GetSpawnByLocationID(zone, 133780815)) 
end

function DespawnSystem2(NPC,Spawn)
    SpawnSet((GetSpawn(NPC,2180002)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180003)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180004)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180005)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180006)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180007)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180010)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180011)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180015)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180017)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180020)),"visual_state",6867)
    SpawnSet((GetSpawn(NPC,2180023)),"visual_state",6867)  
     zone = GetZone(NPC)
        Despawn(GetSpawnByLocationID(zone, 133780816))--BUBBLES
        Despawn(GetSpawnByLocationID(zone, 133780817))
        Despawn(GetSpawnByLocationID(zone, 133780818))    
  
        Despawn(GetSpawnByLocationID(zone, 133780811)) --CLOUD 
    end