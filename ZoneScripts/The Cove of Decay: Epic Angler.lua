--[[
    Script Name    : ZoneScripts/The Cove of Decay: Epic Angler.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 05:03:10
    Script Purpose : 
                   : 
--]]

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
local rognogx4 = GetNPC(Player, 3110009)
RemoveSpawnAccess(rognogx4, Player)
end

