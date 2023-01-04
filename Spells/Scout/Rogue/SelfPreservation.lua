--[[
    Script Name    : Spells/Scout/Rogue/SelfPreservation.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.04 01:01:45
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Hate)
    AddProc(Caster, 1, 30)
end

function proc(Caster, Target, Type, Hate)
    Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    HateMod = LvlBonus *2 + Hate
    Spell = GetSpell(2550383, GetSpellTier())
    
    if Type == 1 then
        SetSpellDataIndex(Spell, 0, HateMod)
            CastCustomSpell(Spell, Caster, Target)
    end
end

function remove(Caster, Target)
    RemoveProc(Caster)
end

