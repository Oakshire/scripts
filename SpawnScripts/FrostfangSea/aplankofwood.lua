--[[
   Script Name     : SpawnScriptsFrostfangSeaaplankofwood.lua
   Script Purpose  : for the spawn "a plank of wood"
   Script Author   : theFoof
   Script Date     : 2013.5.6
   Script Notes    : 
--]]

local BoatloadWork = 4

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 40, "CheckQuest", "CheckQuest")
end

function casted_on(Target, Caster, SpellName)
    if HasQuest(Caster, BoatloadWork) and GetQuestStep(Caster, BoatloadWork) == 1 and SpellName == "gather " then
	    AddStepProgress(Caster, BoatloadWork, 1, 1)
		Despawn(Target)
	end
end

function respawn(NPC)
    spawn(NPC)
end

function CheckQuest(NPC, Player)
    if GetQuestStep(Player, BoatloadWork) == 1 then
        AddSpawnAccess(NPC, Player)
    else 
        RemoveSpawnAccess(NPC, Player)
    end
end