--[[
    Script Name    : SpawnScripts/Graystone/MinerGoldclamp.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.20 03:06:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "mining_digging")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end