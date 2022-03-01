--[[
    Script Name    : SpawnScripts/OutpostOverlord/evildoortoepic.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.23 02:10:16
    Script Purpose : 
                   : 
--]]

function used(NPC, Spawn, SpellName)
    if SpellName == "use" then
        if HasQuest(Spawn, TheFinalAssault) then
            Zone(GetZone(348), Spawn, -113.98, 4.47, -172.61, 180)
        end
    end
end

