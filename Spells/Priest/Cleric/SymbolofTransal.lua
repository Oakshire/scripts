--[[
    Script Name    : Spells/Priest/Cleric/SymbolofTransal.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 05:01:35
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Max Health of group members (AE) by 30.4
-- Increases Mitigation of group members (AE) vs arcane damage by 156

function cast(Caster, Target, HP, Mit, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    TotalBonus =  LvlBonus * 2 + StatBonus
    HpBuff = HP +  math.floor(TotalBonus)
    MitBuff = Mit + math.floor(TotalBonus)
    
    AddSpellBonus(Target, 500, HpBuff)
    AddSpellBonus(Target, 203, MitBuff)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Target)

end
