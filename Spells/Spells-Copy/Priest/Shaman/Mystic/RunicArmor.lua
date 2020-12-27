--[[
    Script Name    : Spells/Priest/Shaman/Mystic/RunicArmor.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 06:12:49
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- VIII and above missing max health portion of script - Neatz09


function cast(Caster, Target, WardValue, MitValue)
    -- Wards group members (AE) against 4 points of physical damage
    AddWard(WardValue)

    -- Increases Mitigation of group members (AE) vs physical damage by 93
    --     If not fighter
    local group = GetGroup(Caster)
    if group ~= nil then
        for key, value in pairs(group) do
            if value and GetArchetypeName(value) ~= "fighter" then
                -- AddSpellBonus(value, 204, MitValue)
                -- AddSpellBonus(value, 205, MitValue)
                -- AddSpellBonus(value, 206, MitValue)
            end
        end
    end
end

function remove(Caster, Target)
    RemoveWard()
    RemoveSpellBonus(Target)
end
