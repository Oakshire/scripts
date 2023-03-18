--[[
    Script Name    : Spells/Fighter/Crusader/PledgeofArmament.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2023
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of target vs physical damage by 73
-- Decreases Mitigation of caster vs physical damage by 162

function cast(Caster, Target, TgtMit, CastMit)
    Level = GetLevel(Caster)
    SpellLevel = 15
    Mastery = SpellLevel + 10
   
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    TargetMit = TgtMit + LvlBonus
    CasterMit = CastMit + LvlBonus
    
    AddSpellBonus(Target, 200, TargetMit)
    AddSpellBonus(Caster, 200, CasterMit)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)

end
