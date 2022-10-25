--[[
    Script Name    : SpawnScripts/QeynosHarbor/TipsyTina.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.24 03:10:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = MakeRandomInt(1,4)
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_guard_gf_153d5a3.mp3", "Let's have a drink together and forget that we ever met.", "happy", 698745754, 2682390289, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_guard_gf_b5bfa487.mp3", "Look sir, I had just one ale an hour ago with dinner.", "whome", 2226920057, 694300008, Spawn)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_hail_gf_965fb709.mp3", "Oooh... I don't feel so good.", "gag", 1225424963, 2991477373, Spawn)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_guard_gf_c874c635.mp3", "I know I shouldn't drink! Forgive me sir!", "wince", 718370281, 20784543, Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,3)   
        if choice == 1 then    
        PlayAnimation(NPC,891)
        elseif choice == 2 then    
        PlayAnimation(NPC,11422)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 683.65, -20.64, 72.01, 2, 1)
	MovementLoopAddLocation(NPC, 683.65, -20.64, 72.01, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 683.96, -20.64, 62.55, 2, 1)
	MovementLoopAddLocation(NPC, 668.03, -20.64, 57.65, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 692.58, -20.64, 72.18, 2, 1)
	MovementLoopAddLocation(NPC, 692.58, -20.64, 72.18, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 672.17, -20.64, 62.42, 2, 1)
	MovementLoopAddLocation(NPC, 672.17, -20.64, 62.42, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 674.2, -20.64, 44.57, 2, 1)
	MovementLoopAddLocation(NPC, 674.2, -20.64, 44.57, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 682.52, -20.64, 72.1, 2, 6)
	MovementLoopAddLocation(NPC, 674.2, -20.64, 44.57, 2, 1)
	MovementLoopAddLocation(NPC, 674.2, -20.64, 44.57, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 672.17, -20.64, 62.42, 2, 1)
	MovementLoopAddLocation(NPC, 672.17, -20.64, 62.42, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 692.58, -20.64, 72.18, 2, 1)
	MovementLoopAddLocation(NPC, 692.58, -20.64, 72.18, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 668.03, -20.64, 57.65, 2, 1)
	MovementLoopAddLocation(NPC, 668.03, -20.64, 57.65, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 683.96, -20.64, 62.55, 2, 1)
	MovementLoopAddLocation(NPC, 683.96, -20.64, 62.55, 2, 22,"Drink")
	MovementLoopAddLocation(NPC, 683.65, -20.64, 72.01, 2, 1)
	MovementLoopAddLocation(NPC, 683.65, -20.64, 72.01, 2, 22,"Drink")
end