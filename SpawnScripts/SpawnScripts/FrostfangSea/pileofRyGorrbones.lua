--[[
	Script Name		:	SpawnScripts/FrostfangSea/pileofRyGorrbones.lua
	Script Purpose	:	for the spawn "pile of Ry'Gorr bones"
	Script Author	:	theFoof
	Script Date		:	2013.5.29
	Script Notes	:	
--]]
local TheGauntlet = 36

local PouringSkellies = 40

function spawn(NPC)
	SetRequiredQuest(NPC, TheGauntlet, 1, 0, 0, 20)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Smash the bones' then
		if GetQuestStep(Spawn, TheGauntlet) == 1 then
			local X = GetX(NPC)
			local Y = GetY(NPC)
			local Z = GetZ(NPC)
			AddStepProgress(Spawn, TheGauntlet, 1, 1)
			local mob = SpawnMob(GetZone(Spawn), 4701121, 0, X, Y, Z, 0)
			Attack(mob, Spawn)
			Despawn(NPC)
		end
    elseif SpellName == 'pour one out' then
        if GetQuestStep(Spawn, PouringSkellies) == 1 then
            SpawnSet(NPC, "visual_state", "491")
            AddTimer(NPC, 4000, "depop")
            AddStepProgress(Spawn, PouringSkellies, 1, 1)
            SendMessage(Player, "You have poured Fronden's Finest on the orc bones.")
        end
	end
end

function depop(NPC, Spawn)
    Despawn(NPC)
end