--[[
    Script Name    : Spells/Priest/Weakness.lua
    Script Author  : LordPazuzu
    Script Date    : 12/7/2022
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, BasePenalty, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 7
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
            
    end
    
    LvlMod = LvlBonus * 0.1
    StrMod = BasePenalty - LvlMod
    
    AddSpellBonus(Target, 0, StrMod)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end



