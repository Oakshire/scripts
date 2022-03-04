--[[
    Script Name    : SpawnScripts/The Cove of Decay: Epic Angler/RognogtheAngler.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 04:03:45
    Script Purpose : Governs the behavior of Rognog the Angler in Cove of Decay: Epic Angler
    Script Notes   : Rognog has special abilities. He only activates once the raid kills all 
                   : of "a catch" which is a grouped mob to his left. At 50%, he respawns as
                   : a level 52 x4.
                   : 
--]]


function spawn(NPC)
    local zone = GetZone(NPC)
    local players = GetPlayersInZone(zone)
    local rognogx4 = GetSpawn(NPC,3110009)
    for k,v in ipairs(players) do
    RemoveSpawnAccess(rognogx4, v)
    end
end

function aggro(NPC)
end

function healthchanged(NPC)
    local max = GetMaxHP(NPC)
    local current = GetHP(NPC)
    if current == max*0.5 then
        --We need to despawn him and respawn him in another location ID.
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end