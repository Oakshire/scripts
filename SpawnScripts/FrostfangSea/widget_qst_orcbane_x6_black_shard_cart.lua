--[[
	Script Name		:	SpawnScripts/FrostfangSea/widget_qst_orcbane_x6_black_shard_cart.lua 
	Script Purpose	:	the black shard cart
	Script Author	:	theFoof
	Script Date		:	2013.8.11
	Script Notes	:
--]]

local SometimesKnut = 84

function spawn(NPC)
	SetRequiredQuest(NPC, SometimesKnut, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'break the black shard!' then
		if GetQuestStep(Spawn, SometimesKnut) == 3 then
			SetStepComplete(Spawn, SometimesKnut, 3)
			RemoveSpawnAccess(GetSpawnByLocationID(GetZone(Spawn), 579551), Spawn)
		end
	end
end