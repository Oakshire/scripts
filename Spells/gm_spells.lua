--[[
    Script Name    : Spells/gm_spells.lua
    Script Purpose    : Handles all GM spells
    Script Author    : GMS !
    Script Date    : Anytime
    Script Notes    : Use spells_data to link to the specific command(s)
--]]

function cast(Caster, Target, Type)
    if Type == "MoonJump" then
        MoonJump(Caster, Target)
    end
end

function MoonJump(Caster, Target)
    SetServerControlFlag(Caster, 4, 16, 1)
end