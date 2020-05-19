--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/NecromanticPact.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.08 01:12:35
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Applies Necromantic Pact to qualifying pets.
--     When damaged this spell has a 25% chance to cast Exposed Noxious on target's attacker.  Lasts for 20.0 seconds.  
--         Decreases Mitigation of target vs noxious damage by 141
--     On any combat or spell hit this spell may cast Exposed Noxious on target of attack.  Lasts for 20.0 seconds.  Triggers about 5.0 times per minute. 
--         Decreases Mitigation of target vs noxious damage by 141

function cast(Caster, Target)
    AddProc(Target, 1, 25)
    AddProc(Target, 2, 25)
end

function proc(Caster, Target, Type, mitValue)
    if type == 1 or Type == 2 then
        AddSpellBonus(Target, 202, mitValue)
        AddSpellTimer(20000, "RemoveDebuff")
    end
end

function RemoveDebuff(Caster, Target)
    RemoveSpellBonus(Target)
end

function remove(Caster, Target)
    RemoveProc(Target)
end
