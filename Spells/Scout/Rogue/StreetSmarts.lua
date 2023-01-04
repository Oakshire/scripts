--[[
    Script Name    : Spells/Scout/Rogue/StreetSmarts.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 03:12:20
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 10.0
-- Increases STR of caster by 15.0

function cast(Caster, Target, Agi, Str)
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 6

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end   
    StatMod = LvlBonus * 0.5
    AgiMod = Agi + StatMod
    StrMod = Str + StatMod
    AddSpellBonus(Caster, 2, AgiMod)
    AddSpellBonus(Caster, 0, StrMod)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
