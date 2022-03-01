--[[
	Script Name	: SpawnScripts/FrostfangSea/LionPost.lua
	Script Purpose	: for the spawn "lion post"
	Script Author	: theFoof
	Script Date	: 2013.05.25
	Script Notes	: 
--]]
local IcemanesCometh = 18

function spawn(NPC)
    SetRequiredQuest(NPC, IcemanesCometh, 1)
end

function casted_on(NPC, Caster, SpellName)
    if SpellName == 'leash cub to post' then
	    counter = 0
	    if GetTempVariable(Caster, "cub1") ~= nil then
		    counter = counter + 1
			Despawn(GetTempVariable(Caster, "cub1"))
		end
		if GetTempVariable(Caster, "cub2") ~= nil then
		    counter = counter + 1
			Despawn(GetTempVariable(Caster, "cub2"))
		end
		if GetTempVariable(Caster, "cub3") ~= nil then
		    counter = counter + 1
			Despawn(GetTempVariable(Caster, "cub3"))
		end
		if GetTempVariable(Caster, "cub4") ~= nil then
		    counter = counter + 1
			Despawn(GetTempVariable(Caster, "cub4"))
		end
		SetTempVariable(Caster, "cub1", nil)
		SetTempVariable(Caster, "cub2", nil)
		SetTempVariable(Caster, "cub3", nil)
		SetTempVariable(Caster, "cub4", nil)
		AddStepProgress(Caster, IcemanesCometh, 1, counter)
	end
end