--[[
    Script Name    : Spells/Priest/Shaman/Mystic/UrsineAvatar.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 08:12:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StaAmt, WisAmt, MitAmt)
    -- Shapechanges caster into a bear
    Say(Caster, "Not Implemented: shape change and see stealth")

    -- Increases STA of caster by 7.7
    AddSpellBonus(Target, 1, StaAmt)

    -- Increases WIS of caster by 28.8
    AddSpellBonus(Target, 3, WisAmt)

    -- Grants See Stealth to caster

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 428
    AddSpellBonus(Target, 201, MitAmt)
    AddSpellBonus(Target, 202, MitAmt)
    AddSpellBonus(Target, 203, MitAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
