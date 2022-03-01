--[[
    Script Name    : SpawnScripts/Everfrost/GinnieStonestoe.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.04 09:09:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Don't cause any trouble. We've enough trouble with all the beasts roaming about. We needn't trouble from one of the likes of you.")
end

function respawn(NPC)

end

