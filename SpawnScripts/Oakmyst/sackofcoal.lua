--[[
    Script Name    : SpawnScripts/Oakmyst/sackofcoal.lua
    Script Author  : Ememjr
    Script Date    : 2020.05.08 07:05:16
    Script Purpose : 
                   : 
--]]

local HadAHammer = 525

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
    --SetRequiredQuest(NPC, HadAHammer, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Player)
    if GetQuestStep(Player, HadAHammer) > 1 then
	    AddSpawnAccess(NPC, Player)
	end
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "gather coal" then
	    if HasQuest(Caster, HadAHammer) then
		    SummonItem(Caster, 5771)
		end
	end
end

