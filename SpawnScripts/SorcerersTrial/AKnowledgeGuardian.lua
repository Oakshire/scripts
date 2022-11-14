--[[
    Script Name    : SpawnScripts/SorcerersTrial/AKnowledgeGuardian.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.13 04:11:56
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/SorcerersTrial/dpoinvisiblecube.lua")

function spawn(NPC)

end


function respawn(NPC)
	spawn(NPC)
end

function death(NPC,Spawn)
    AddTimer(NPC,1800,"DespawnAnim",1,Spawn)
    ApplySpellVisual(NPC,101)
    local zone = GetZone(Spawn)
    local Ring = GetSpawnByLocationID(zone,133780600)
    if Ring ~= nil then
        Trial4Done(Ring,Spawn)
    end
end

function DespawnAnim(NPC,Spawn)
Despawn(NPC)
end