--[[
    Script Name    : Spells/Priest/Druid/MossyBalm.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.18 09:03:34
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, MinVal, MaxVal)
    StatBonus = GetWis(Caster) / 10
    MinHeal = MinVal + math.floor(StatBonus)
    MaxHeal = MaxVal + math.floor(StatBonus)
    SpellHeal("Heal", MinHeal, MaxHeal)
    
    CureByType(1, 1, "", (GetLevel(Caster) * 1.08) + 1)
    
end

