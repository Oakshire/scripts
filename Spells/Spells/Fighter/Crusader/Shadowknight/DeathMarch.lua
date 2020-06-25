--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/DeathMarch.lua
    Script Author  : neatz09
    Script Date    : 2019.11.14 10:11:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
CastSpell(Target, 5165, GetSpellTier())
   AddProc(Target, 14, 100, nil, 1)

end

function proc(Caster, Target, Type)
    CastSpell(Caster, 5165, GetSpellTier())
    end


function remove(Caster, Target)
RemoveProc(Target)
end

-- Applies On the March.  Lasts for 10.0 seconds.
--     Increases INT of group members (AE) by 102.1
--     Increases Ability Casting Speed of group members (AE) by 35.3%
--     Increases Multi Attack of group members (AE) by 35.3
--     Makes group members (AE) immune to Root, Stifle, Stun, Fear and Daze effects
-- On a kill this spell will cast On the March on target.  Lasts for 10.0 seconds.  
--     Increases INT of group members (AE) by 102.1
--     Increases Ability Casting Speed of group members (AE) by 35.3%
--     Increases Multi Attack of group members (AE) by 35.3
--     Makes group members (AE) immune to Root, Stifle, Stun, Fear and Daze effects
