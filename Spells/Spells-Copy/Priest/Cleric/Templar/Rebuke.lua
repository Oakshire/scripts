--[[
	Script Name	: Rebuke.lua
	Script Purpose	: Templar Mitigation debuff
	Script Author	: theFoof
	Script Date	: 2014.3.9
--]]

function cast(Caster, Target, DebuffVal)
    AddSpellBonus(Target, 200, DebuffVal)
    Interrupt(Caster, Target)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end