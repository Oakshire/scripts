--[[
    Script Name    : SpawnScripts/Commonlands/FrenzyRoot2.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.02 07:04:37
    Script Purpose : 
    Script Notes   :  NEED TO ADD STOP MOVEMENT LUA FUNCTION, OTHERWISE ORCS ARE MOVING WHILE GATHERING
--]]

local QUEST = 408 -- Orcs of the Ree quest 
OrcID = 330128

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
	local Orc = GetSpawn(NPC, OrcID)
	local OrcDistance = GetDistance(NPC, Orc)
     if OrcDistance <= 3 and not HasSpellEffect(Orc, 5468) then
      FaceTarget(Orc, NPC)
      SpawnSet(Orc, "visual_state", 2809)
      AddTimer(NPC, 5000, "progress", 1, Spawn)
      if HasSpellEffect(Orc, 5468) then
      CastSpell(Spawn, 5468,1, Orc)
      end
end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Pick back up' then
            Despawn(NPC)
            SummonItem(Spawn, 46427, 1)
		end
	end




function progress(NPC, Spawn)
local Orc = GetSpawn(NPC, OrcID)
SpawnSet(Orc, "visual_state", 0)
AddStepProgress(Spawn, QUEST, 1, 1)
if not HasSpellEffect(Orc, 5468) then
CastSpell(Spawn, 5468, 1, Orc)
end
Despawn(NPC)
end


function respawn(NPC)
	spawn(NPC)
end