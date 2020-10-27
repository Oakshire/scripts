--[[
    Script Name    : Spells/Commoner/Salvation.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:49
    Script Purpose : 
                   : 
--]]

-- On death this spell will cast Salvation on target.  Lasts for 36.0 seconds.  
--     Heals target for 512
--     Increases Mitigation of target vs physical damage by 369
--     Grants a total of 1 trigger of the spell.

function cast(Caster, Target, Healz, Mitz)
	SpellHeal("Heal", Healz)
	AddSpellBonus(Target, 200, Mitz)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end