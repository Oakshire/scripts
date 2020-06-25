--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/HolyAid.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 06:12:21
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, PhyBonus)
    -- Heals target for 15.4 - 18.8% of max health
    --     This effect cannot be critically applied.
  SpellHeal(Heal, GetPCTOfHP(Caster, MinVal), GetPCTOfHP(Caster, MaxVal),Caster, 2, 1)

    -- Increases Mitigation of target vs physical damage by 76
    AddSpellBonus(Target, 200, PhyBonus)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
