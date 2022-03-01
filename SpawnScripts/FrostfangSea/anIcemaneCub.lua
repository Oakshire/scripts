--[[
	Script Name	: SpawnScripts/FrostfangSea/anIcemaneCub.lua
	Script Purpose	: for the spawn "an icemane cub"
	Script Author	: theFoof
	Script Date	: 2013.05.25
	Script Notes	: 
--]]
require"SpawnScripts/Generic/tiny_movement_loop"
function spawn(NPC)
    ChooseMovement(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

local IcemanesCometh = 18
function casted_on(NPC, Caster, SpellName)
    if SpellName == "Leash" then
	    if GetQuestStep(Caster, IcemanesCometh) == 1 then
	        if GetTempVariable(Caster, "cub1") == nil then
                SetTempVariable(Caster, "cub1", NPC)
				AddTimer(NPC, 600000, "depop")
		        SpawnSet(NPC, "attackable", "0")
			    SpawnSet(NPC, "show_level", "0")
		        SetFollowTarget(NPC, Caster)
			    SetSpeed(NPC, 9)
		   	    ToggleFollow(NPC)
			elseif GetTempVariable(Caster, "cub2") == nil then
                SetTempVariable(Caster, "cub2", NPC)
				AddTimer(NPC, 600000, "depop")
		        SpawnSet(NPC, "attackable", "0")
			    SpawnSet(NPC, "show_level", "0")
		       	SetFollowTarget(NPC, Caster)
			    SetSpeed(NPC, 9)
		       	ToggleFollow(NPC)
			elseif GetTempVariable(Caster, "cub3") == nil then
                SetTempVariable(Caster, "cub3", NPC)
				AddTimer(NPC, 600000, "depop")
		        SpawnSet(NPC, "attackable", "0")
			    SpawnSet(NPC, "show_level", "0")
		       	SetFollowTarget(NPC, Caster)
			    SetSpeed(NPC, 9)
		       	ToggleFollow(NPC)
			elseif GetTempVariable(Caster, "cub4") == nil then
                SetTempVariable(Caster, "cub4", NPC)
				AddTimer(NPC, 600000, "depop")
		        SpawnSet(NPC, "attackable", "0")
			    SpawnSet(NPC, "show_level", "0")
		       	SetFollowTarget(NPC, Caster)
			    SetSpeed(NPC, 9)
		       	ToggleFollow(NPC)
		    end
		end
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function depop(NPC, Spawn)
    if NPC ~= nil then
        Despawn(NPC)
	end
end