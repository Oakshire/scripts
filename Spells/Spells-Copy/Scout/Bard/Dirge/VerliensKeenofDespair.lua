--[[
    Script Name    : Spells/Scout/Bard/Dirge/VerliensKeenofDespair.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08 09:08:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SlowAmt, HostileChance, DmgChance, DebuffAmt, DebuffType)
    Say(Caster, "Slow portion not yet scripted for Verlien's Keen of Despair")
-- Slows target
-- chance to dispel when target receives hostile action
-- chance to dispel when target takes damage
-- Decreases Mitigation of target vs noxious damage

   AddSpellBonus(Target, DebuffType, DebuffAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

