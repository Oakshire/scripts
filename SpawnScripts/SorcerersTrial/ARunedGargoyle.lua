--[[
    Script Name    : SpawnScripts/SorcerersTrial/ARunedGargoyle.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.13 04:11:27
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
        Trial3Done(Ring,Spawn)
    end
end

function DespawnAnim(NPC,Spawn)
Despawn(NPC)
end