--[[
    Script Name    : SpawnScripts/OutpostOverlord/afallenTunarian.lua
    Script Author  : Lemmeron
    Script Date    : 2020.08.21 10:08:06
    Script Purpose : To show Emote and Confused ghost spawned from killing corresponding Gravedigger
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 25000, "Vanish", 1)
end

function Emote1(NPC, Spawn)
Say(NPC, "ghost 1", Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "Wha....What Happened ?", "", 1689589577, 4560189, Spawn)
end

function Vanish(NPC)
Despawn(NPC)
end

function respawn(NPC)
end

