--[[
    Script Name    : SpawnScripts/Darklight/searingtrout.lua
    Script Author  : fearfx
    Script Date    : 2017.01.24 06:01:57
    Script Purpose : 
                   : 
--]]

local ReapingTheBenefits = 188

function spawn(NPC)

end

function hailed(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Fishing" then
        Say(Caster, "Fish!")
	    if HasQuest(Caster, ReapingTheBenefits) then
                --Say(Caster, "")
		Despawn(Target)
		SummonItem(Caster, 37182)
	    end
    end
end