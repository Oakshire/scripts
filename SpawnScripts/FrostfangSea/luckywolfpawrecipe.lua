--[[
	Script Name	: SpawnScripts/FrostfangSea/luckywolfpawrecipe.lua
	Script Purpose	: "lucky wolf paw recipe" sign
	Script Author	: theFoof
	Script Date	: 2013.5.15
	Script Notes	: 
--]]

local HadAHammer = 12

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	SetRequiredQuest(NPC, HadAHammer, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Player)
    if GetQuestStep(Player, HadAHammer) > 0 or HasCompletedQuest(Player, HadAHammer) then
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