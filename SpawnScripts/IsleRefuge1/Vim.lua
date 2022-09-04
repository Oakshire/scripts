--[[
    Script Name    : SpawnScripts/IsleRefuge1/Vim.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 12:09:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    
    choice = math.random(1,3)
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_187fc6bb.mp3", "I am busy right now...", "no", 1835666244, 487490745, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_481beac8.mp3", "I love traveling the seas... Oh! Did you need something?", "sniff", 2187888771, 2112320089, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_6c0c3c22.mp3", "The Far Journey is a beautiful ship, ain't she?", "smirk", 139722646, 2672074756, Spawn)
    end
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -22.05, -6.35, 57.98, 2, 35)
	MovementLoopAddLocation(NPC, -24.85, -6.35, 54.26, 2, 0)
	MovementLoopAddLocation(NPC, -23.39, -6.35, 51.23, 2, 35)
	MovementLoopAddLocation(NPC, -22.68, -6.35, 49.75, 2, 0)
	MovementLoopAddLocation(NPC, -28.69, -6.35, 50.27, 2, 0)
	MovementLoopAddLocation(NPC, -33.83, -6.35, 51.68, 2, 35)
	MovementLoopAddLocation(NPC, -28.29, -6.35, 52.99, 2, 0)
	MovementLoopAddLocation(NPC, -26.26, -6.35, 53.6, 2, 0)
	MovementLoopAddLocation(NPC, -24.91, -6.35, 56.69, 2, 0)
	MovementLoopAddLocation(NPC, -24.06, -6.35, 58.33, 2, 0)
	MovementLoopAddLocation(NPC, -23.76, -6.35, 60.97, 2, 35)
	MovementLoopAddLocation(NPC, -21.76, -6.35, 61.27, 2, 0)
	MovementLoopAddLocation(NPC, -19.9, -6.35, 58.1, 2, 0)
	MovementLoopAddLocation(NPC, -22.38, -6.35, 49.08, 2, 35)
	MovementLoopAddLocation(NPC, -21.27, -6.35, 49.97, 2, 0)
end

