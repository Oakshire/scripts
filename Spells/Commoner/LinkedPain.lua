--[[
    Script Name    : Spells/Commoner/LinkedPain.lua
    Script Author  : neatz09
    Script Date    : 2020.09.30 09:09:44
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell has a 33% chance to cast Linked Pain on target's attacker.  
--     Decreases threat priority of target by 1 position
-- Decreases Hate Gain of target by 10.7%

function cast(Caster, Target, Hate)
    AddSpellBonus(Target, 624, Hate)
    Say(Caster, "Threat Position not implemented.")

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
