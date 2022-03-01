--[[
    Script Name    : SpawnScripts/Oakmyst/luckywolfpawrecipe.lua
    Script Author  : Ememjr
    Script Date    : 2020.05.08 03:05:19
    Script Purpose : 
                   : 
--]]

local HadAHammer = 525

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
    SetRequiredQuest(NPC, HadAHammer, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Player)
    if GetQuestStep(Player, HadAHammer) > 0 then
        AddSpawnAccess(NPC, Player)
    end
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "pick up recipe" then
	    if HasItem(Caster, 32122) == false and HasQuest(Caster, HadAHammer) then
		    SummonItem(Caster, 32122)
		end
	end
end

