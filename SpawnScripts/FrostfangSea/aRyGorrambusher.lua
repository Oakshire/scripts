--[[
   Script Name     : SpawnScripts/FrostfangSea/aRyGorrambusher.lua 
   Script Purpose  : for the spawns "a RyGorr ambusher"
   Script Author   : theFoof
   Script Date     : 2013.5.10
   Script Notes    : 
--]]

local FlameOn = 5

function spawn(NPC)
end

function death(NPC, Spawn) -- updates step 2 of "Flame On!" when the encounter is killed.
    if not IsAlive(GetTempVariable(NPC, "other_orc")) then
		SetStepComplete(Spawn, FlameOn, 2)
	end
	SetTempVariable(NPC, "other_orc", nil)
end

function CombatReset(NPC)
    Despawn(NPC)
	SetTempVariable(NPC, "other_orc", nil)
end