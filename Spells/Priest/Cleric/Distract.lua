--[[
    Script Name    : Spells/Priest/Cleric/Distract.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.01 09:12:33
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Hate, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus *2 + StatBonus
    MinHeal = MinVal + math.floor(HealBonus)
    MaxHeal = MaxVal + math.floor(HealBonus)
    
    --SpellHeal("Heal", MinHeal, MaxHeal)
    ModifyHP(Caster, math.random(MinVal, MaxVal))
    AddHate(Caster, Target, Hate, 1)

end




