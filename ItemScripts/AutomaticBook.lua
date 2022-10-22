--[[
    Script Name    : ItemScripts/AutomaticBook.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.21 04:10:19
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)

end

function obtained(Item, Spawn)    
    target = GetTarget(Spawn)
    if target ~= nil then
--        CastEntityCommand(Spawn, target, 1, "Scribe")
end
end
    