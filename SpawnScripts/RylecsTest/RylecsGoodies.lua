--[[
    Script Name    : SpawnScripts/RylecsTest/RylecsGoodies.lua
    Script Author  : TyroneSWG
    Script Date    : 2021.01.28 05:01:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    --Say(NPC, "Oh wise creature, what do you seek?")
    --ToggleFollow(NPC)


end

function targeted(Spawn, Spawn)
    Say(NPC, "Don't I look pretty today..")
end

function respawn(NPC)

end

