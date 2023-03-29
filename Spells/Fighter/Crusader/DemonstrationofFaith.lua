--[[
    Script Name    : Spells/Fighter/Crusader/DemonstrationofFaith.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.17 04:03:05
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Ward)
    Level = GetLevel(Caster)
    SpellLevel = 12
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    WardBonus = LvlBonus + StatBonus
    TotalWard = math.floor(WardBonus) * 2 + Ward
    
    AddWard(TotalWard, 1)
end

function remove(Caster, Target)
    RemoveWard(Ward)
end
