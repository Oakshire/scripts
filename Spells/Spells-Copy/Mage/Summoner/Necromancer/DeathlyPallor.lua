--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/DeathlyPallor.lua
    Script Author  : neatz09
    Script Date    : 2019.10.19 05:10:27
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Feigns Death with 100% chance of success

function cast(Caster, Target)
SetServerControlFlag(Target, 5, 1, 1);
	ClearHate(Target)
		SendMessage(Caster, "Your feign death succeeded", "yellow")
end
