--[[
    Script Name    : SpawnScripts/Commonlands/supplycache.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.12 06:05:48
    Script Purpose : 
                   : 
--]]

local BrokenEquipment = 415 -- Broken Equipment Quest

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, BrokenEquipment) and GetQuestStep(Spawn, BrokenEquipment) == 1  then
		if SpellName == 'Check for essence injector' then
                   SummonItem(Spawn, 6857, 1)
        elseif HasItem(Spawn, 6857) then
            SendMessage(Spawn, "The crate does not contain any essence injectors", "white")
   end
  end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, BrokenEquipment) and GetQuestStep(Spawn, BrokenEquipment) == 1 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end