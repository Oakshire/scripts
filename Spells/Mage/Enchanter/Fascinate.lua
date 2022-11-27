--[[
    Script Name    : Spells/Mage/Enchanter/Fascinate.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.26 09:11:36
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Stuns target
*Prevents AOE (except when direct) 
*Dispelled when target takes damage
*Does not affect Epic targets
*Resistibility increases against targets higher than level 29.

--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target)
    Say(Caster, "Resistability not implemented")

AddControlEffect(Target, 1) 
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1) 
end


