--[[
    Script Name    : SpawnScripts/SorcerersTrial/AnEnergyKeeper.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.13 02:11:35
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
        Trial1Done(Ring,Spawn)
    end
end

function DespawnAnim(NPC,Spawn)
Despawn(NPC)
end