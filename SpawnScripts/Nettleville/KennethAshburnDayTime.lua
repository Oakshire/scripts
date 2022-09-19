--[[
    Script Name    : SpawnScripts/Nettleville/KennethAshburnDayTime.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.27 05:06:44
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    FactionChecking(NPC,Spawn,faction)
else
    if GetFactionAmount(Spawn,214)>=20000 then
	local choice = MakeRandomInt(1,6)
    elseif GetFactionAmount(Spawn,214)>=10000 then        
	local choice = MakeRandomInt(1,5)
	else
	local choice = MakeRandomInt(1,4)
    
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_1a263f4f.mp3", "The Qeynos Guard pledge their lives to protect the city from darkness and chaos.", "", 918343133, 799385310, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_35cd2012.mp3", "The Tunarian Alliance would have us battle our foes by nuzzling deer and hiding in the treetops.", "", 2384164425, 1112940264, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_92c9c274.mp3", "The Ironforge Exchange attracts those too cowardly and selfish to sacrifice themselves in the defense of Qeynos.", "", 1815005081, 411189458, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_9a3054d5.mp3", "Evil must be ground under the full might of good, not greeted with the empathy and naivety of the Celestial Watch.", "", 1796625143, 3832366118, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_10_gm_230250f4.mp3", "The Qeynos Guard demands from its recruits adherence to a code of honor and justice.", "", 77474126, 261134203, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_20_gm_f3de419f.mp3", "In service to the Qeynos Guard you have performed bravely and without concern for your own safety.", "", 1902356454, 747924750, Spawn, 0)
    
	end
end
end
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then
    FactionChecking(NPC,Spawn,faction)
	FaceTarget(NPC, Spawn)
else
 if math.random(0,100)<=25 then
 	FaceTarget(NPC, Spawn)
  if GetFactionAmount(Spawn,214)>=20000 then
	local choice = MakeRandomInt(1,6)
    elseif GetFactionAmount(Spawn,214)>=10000 then        
	local choice = MakeRandomInt(1,5)
	else
	local choice = MakeRandomInt(1,4)
    
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_1a263f4f.mp3", "The Qeynos Guard pledge their lives to protect the city from darkness and chaos.", "", 918343133, 799385310, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_35cd2012.mp3", "The Tunarian Alliance would have us battle our foes by nuzzling deer and hiding in the treetops.", "", 2384164425, 1112940264, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_92c9c274.mp3", "The Ironforge Exchange attracts those too cowardly and selfish to sacrifice themselves in the defense of Qeynos.", "", 1815005081, 411189458, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_hail_gm_9a3054d5.mp3", "Evil must be ground under the full might of good, not greeted with the empathy and naivety of the Celestial Watch.", "", 1796625143, 3832366118, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_10_gm_230250f4.mp3", "The Qeynos Guard demands from its recruits adherence to a code of honor and justice.", "", 77474126, 261134203, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_qeynosguard/ft/eco/good/human_eco_good_qeynosguard_20_gm_f3de419f.mp3", "In service to the Qeynos Guard you have performed bravely and without concern for your own safety.", "", 1902356454, 747924750, Spawn, 0)
	end
end
end
end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 676.57, -20.36, 317.02, 2, 5)
	MovementLoopAddLocation(NPC, 676.57, -20.36, 317.02, 2, 52,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 676.56, -20.37, 318.1, 2, 0)
	MovementLoopAddLocation(NPC, 674.78, -20.44, 320.6, 2, 0)
	MovementLoopAddLocation(NPC, 675.25, -20.54, 323.9, 2, 0)
	MovementLoopAddLocation(NPC, 678.53, -20.42, 332.51, 2, 0)
	MovementLoopAddLocation(NPC, 678.39, -20.35, 339.77, 2, 0)
	MovementLoopAddLocation(NPC, 676.19, -24.54, 350.38, 2, 0)
	MovementLoopAddLocation(NPC, 675.29, -24.71, 354.7, 2, 0)
	MovementLoopAddLocation(NPC, 669.2, -24.71, 361.29, 2, 0)
	MovementLoopAddLocation(NPC, 665.52, -24.59, 364.12, 2, 0)
	MovementLoopAddLocation(NPC, 665.73, -24.57, 364.79, 2, 1)
	MovementLoopAddLocation(NPC, 665.73, -24.57, 364.79, 2, 45,"Drink")
	MovementLoopAddLocation(NPC, 665.73, -24.57, 364.79, 2, 45,"Drink")
	MovementLoopAddLocation(NPC, 665.95, -24.55, 365.46, 2, 0)
	MovementLoopAddLocation(NPC, 665.04, -24.6, 363.9, 2, 0)
	MovementLoopAddLocation(NPC, 665.59, -24.82, 357.02, 2, 0)
	MovementLoopAddLocation(NPC, 670.77, -24.05, 344.67, 2, 0)
	MovementLoopAddLocation(NPC, 670.8, -23.14, 341.46, 2, 0)
	MovementLoopAddLocation(NPC, 661.23, -22.48, 335.84, 2, 0)
	MovementLoopAddLocation(NPC, 649.30, -22.27, 325.81, 2, 1)
	MovementLoopAddLocation(NPC, 649.30, -22.27, 325.81, 2, 55,"EcologyEmotes")
    MovementLoopAddLocation(NPC, 650.31, -22.29, 328.25, 2, 0)
	MovementLoopAddLocation(NPC, 654.48, -22.3, 329.73, 2, 0)
	MovementLoopAddLocation(NPC, 664.35, -20.44, 326.54, 2, 0)
	MovementLoopAddLocation(NPC, 667.64, -20.43, 318.17, 2, 0)
	MovementLoopAddLocation(NPC, 670.65, -20.38, 310.43, 2, 5)
	MovementLoopAddLocation(NPC, 670.65, -20.38, 310.43, 2, 55,"EcologyEmotes")
    MovementLoopAddLocation(NPC, 671.90, -20.41, 310.66, 2, 0)
	MovementLoopAddLocation(NPC, 671.21, -20.42, 313.6, 2, 0)
	MovementLoopAddLocation(NPC, 671.76, -20.42, 317.55, 2, 0)
	MovementLoopAddLocation(NPC, 674.93, -20.42, 315.75, 2, 0)
end



function Drink(NPC)
    PlayAnimation(NPC,11422)
    AddTimer(NPC,8000, "Drink2")
end

function Drink2(NPC)
  choice = math.random(1,4)   
        if choice == 1 then    
        PlayAnimation(NPC,891)
        elseif choice == 2 then    
        PlayAnimation(NPC,11422)
        elseif choice == 3 then    
        PlayFlavor(NPC,"","","flirt",0,0)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end
   
