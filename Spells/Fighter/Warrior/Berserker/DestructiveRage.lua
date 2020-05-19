--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/DestructiveRage.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, AttackSpeed)
    AddSpellBonus(Target, 617, AttackSpeed)
    Say(Caster, "T10 version missing strikethrough AE")

end

function remove(Caster, Target, MaxVal)
    RemoveSpellBonus(Target)
end
