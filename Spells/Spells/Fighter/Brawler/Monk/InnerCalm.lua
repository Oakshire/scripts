--[[
    Script Name    : Spells/Fighter/Brawler/Monk/InnerCalm.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 06:01:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, ResistAmt)
    -- Increases STR of caster by 9.4
    AddSpellBonus(Target, 0, BonusAmt)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 211
    AddSpellBonus(Target, 201, ResistAmt)
    AddSpellBonus(Target, 202, ResistAmt)
    AddSpellBonus(Target, 203, ResistAmt)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
