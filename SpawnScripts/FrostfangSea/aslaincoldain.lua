--[[
	Script Name	: SpawnScripts/FrostfangSea/aslaincoldain.lua
	Script Purpose	: for the spawn "a slain coldain"
	Script Author	: theFoof
	Script Date	: 2013.06.3
	Script Notes	: 
--]]

local WeaponChoice = 47

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "the body" then
		if GetQuestStep(Spawn, WeaponChoice) == 1 then
			AddStepProgress(Spawn, WeaponChoice, 1, 1)
			Despawn(NPC)
			SendMessage(Spawn, "You found a functional coldain weapon.")
		end
	end
end