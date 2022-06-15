--[[
	Script Name		:	nathanironforge.lua
	Script Purpose	:	Waypoint Path for nathanironforge.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 01:25:37 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,3)
	if choice == 1 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_dc9519d6.mp3", "I want to join the Qeynos Guard when I grow up!", "salute", 3878579501, 1793000405, Spawn)
		elseif choice == 2 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_5674cc18.mp3", "Have you seen a Gnoll before?", "stare", 3064755312, 374536170, Spawn)
		elseif choice == 3 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_110eef44.mp3", "Have you been inside the castle? I want to go there someday!", "smile", 2372987392, 3554768792, Spawn)
    end			
end


function InRange(NPC, Spawn)
	if math.random(1,100)<40 then	
		local choice = math.random(1,5)

	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_cat_gm_fdc32a9.mp3", "Come back here kitty!", "wave", 204283170, 334524744, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_badkid/ft/eco/evil/human_eco_evil_badkid_pig_gm_9fa4475d.mp3", "Run ya swine. Run!", "wave", 1654188343, 2070658176, Spawn)
	    elseif choice == 3 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_dc9519d6.mp3", "I want to join the Qeynos Guard when I grow up!", "salute", 3878579501, 1793000405, Spawn)
		elseif choice == 4 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_5674cc18.mp3", "Have you seen a Gnoll before?", "stare", 3064755312, 374536170, Spawn)
		elseif choice == 5 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_110eef44.mp3", "Have you been inside the castle? I want to go there someday!", "smile", 2372987392, 3554768792, Spawn)
		end
		end
	end
	

function LeaveRange(NPC, Spawn)
end


-- GUARD SALUTES

function Moor(NPC,Spawn)
    guard = GetSpawn(NPC,2210118)
    if guard ~=nil then
    PlayFlavor(NPC,"","","salute",0,0)
    AddTimer(NPC,"2500","MoorSalute")    
end
end

function MoorSalute(NPC,guard)
    guard = GetSpawn(NPC,2210118)
    if guard ~=nil then
    local choice = math.random(1,3)
    if choice==1 then
    PlayFlavor(guard,"","","salute",0,0)
    elseif choice==2 then
    PlayFlavor(guard,"","","chuckle",0,0)
    elseif choice==3 then
    PlayFlavor(guard,"","","hello",0,0)
    end    
end
end



function Thoro(NPC,Spawn)
    guard = GetSpawn(NPC, 2210254)
    if guard ~=nil then
    PlayFlavor(NPC,"","","salute",0,0)
    AddTimer(NPC,"2500","ThoroSalute")    
end
end

function ThoroSalute(NPC,guard)
    guard = GetSpawn(NPC,2210254)
    if guard ~=nil then
    local choice = math.random(1,3)
    if choice==1 then
    PlayFlavor(guard,"","","salute",0,0)
    elseif choice==2 then
    PlayFlavor(guard,"","","chuckle",0,0)
    elseif choice==3 then
    PlayFlavor(guard,"","","hello",0,0)
    end    
end
end

function Elder(NPC,Spawn)
    guard = GetSpawn(NPC, 2210248)
    if guard ~=nil then
    PlayFlavor(NPC,"","","salute",0,0)
    AddTimer(NPC,"2500","ElderSalute")    
end
end

function ElderSalute(NPC,guard)
    guard = GetSpawn(NPC,2210248)
    if guard ~=nil then
    local choice = math.random(1,3)
    if choice==1 then
    PlayFlavor(guard,"","","salute",0,0)
    elseif choice==2 then
    PlayFlavor(guard,"","","chuckle",0,0)
    elseif choice==3 then
    PlayFlavor(guard,"","","hello",0,0)
    end    
end
end


function Velwich(NPC,Spawn)
    guard = GetSpawn(NPC, 2210245)
    if guard ~=nil then
    PlayFlavor(NPC,"","","salute",0,0)
    AddTimer(NPC,"2500","VelwichSalute")    
end
end

function VelwichSalute(NPC,guard)
    guard = GetSpawn(NPC,2210245)
    if guard ~=nil then
    local choice = math.random(1,3)
    if choice==1 then
    PlayFlavor(guard,"","","salute",0,0)
    elseif choice==2 then
    PlayFlavor(guard,"","","chuckle",0,0)
    elseif choice==3 then
    PlayFlavor(guard,"","","hello",0,0)
    end    
end
end

function Buresh(NPC,Spawn)
    guard = GetSpawn(NPC, 2210284)
    if guard ~=nil then
    PlayFlavor(NPC,"","","salute",0,0)
    AddTimer(NPC,"2500","BureshSalute")    
end
end

function BureshSalute(NPC,guard)
    guard = GetSpawn(NPC,2210284)
    if guard ~=nil then
    local choice = math.random(1,3)
    if choice==1 then
    PlayFlavor(guard,"","","salute",0,0)
    elseif choice==2 then
    PlayFlavor(guard,"","","chuckle",0,0)
    elseif choice==3 then
    PlayFlavor(guard,"","","hello",0,0)
    end    
end
end


function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 796.4, -23.22, 74.93, 6, 15)
	MovementLoopAddLocation(NPC, 808.6, -23.18, 79.46, 6, 0)
	MovementLoopAddLocation(NPC, 812.67, -23.34, 79.58, 6, 0)
	MovementLoopAddLocation(NPC, 829.18, -23.31, 49.39, 6, 0)
	MovementLoopAddLocation(NPC, 833.98, -23.31, 43.18, 6, 0)
	MovementLoopAddLocation(NPC, 858.15, -25.37, 39.61, 6, 0)
	MovementLoopAddLocation(NPC, 879.39, -25.37, 43.08, 6, 0)
	MovementLoopAddLocation(NPC, 886.43, -25.37, 42.17, 6, 0)
	MovementLoopAddLocation(NPC, 892.44, -25.37, 37.64, 6, 0)
	MovementLoopAddLocation(NPC, 918.84, -25.49, 24.03, 6, 0)
	MovementLoopAddLocation(NPC, 928.86, -25.4, 10.88, 6, 15)
	MovementLoopAddLocation(NPC, 934.52, -25.47, 22.45, 6, 0)
	MovementLoopAddLocation(NPC, 946.09, -25.52, 29.22, 6, 0)
	MovementLoopAddLocation(NPC, 949.85, -25.5, 29.55, 6, 0)
	MovementLoopAddLocation(NPC, 952.91, -25.5, 26.56, 6, 0)
	MovementLoopAddLocation(NPC, 955.05, -25.5, 22.64, 6, 0)
	MovementLoopAddLocation(NPC, 957.55, -25.44, 22.11, 6, 0)
	MovementLoopAddLocation(NPC, 971.43, -25.52, 21.67, 6, 1)
	MovementLoopAddLocation(NPC, 971.43, -25.52, 21.67, 6, 6,"Moor")
	MovementLoopAddLocation(NPC, 972.16, -25.52, 21.68, 6, 0)
	MovementLoopAddLocation(NPC, 971.64, -25.51, 21.19, 6, 0)
	MovementLoopAddLocation(NPC, 957.61, -25.44, 21.73, 6, 0)
	MovementLoopAddLocation(NPC, 954.4, -25.5, 25.79, 6, 0)
	MovementLoopAddLocation(NPC, 949.8, -25.5, 32.19, 6, 0)
	MovementLoopAddLocation(NPC, 913.51, -25.49, 17.93, 6, 0)
	MovementLoopAddLocation(NPC, 906.69, -25.42, 12.79, 6, 0)
	MovementLoopAddLocation(NPC, 906.1, -25.37, -8.2, 6, 0)
	MovementLoopAddLocation(NPC, 903.37, -25.37, -22.91, 6, 0)
	MovementLoopAddLocation(NPC, 895.72, -24.12, -45, 6, 0)
	MovementLoopAddLocation(NPC, 892.88, -25.36, -52.43, 6, 0)
	MovementLoopAddLocation(NPC, 884.04, -25.36, -59.58, 6, 0)
	MovementLoopAddLocation(NPC, 876.63, -25.36, -62.49, 6, 0)
	MovementLoopAddLocation(NPC, 872.69, -25.39, -67.13, 6, 1)
	MovementLoopAddLocation(NPC, 872.69, -25.39, -67.13, 6, 6,"Thoro")
	MovementLoopAddLocation(NPC, 872.84, -25.4, -67.94, 6, 0)
	MovementLoopAddLocation(NPC, 869.22, -25.36, -64.59, 6, 0)
	MovementLoopAddLocation(NPC, 792.92, -20.99, -61.57, 6, 0)
	MovementLoopAddLocation(NPC, 762.28, -21.63, -59.98, 6, 0)
	MovementLoopAddLocation(NPC, 758.67, -20.97, -37.31, 6, 0)
	MovementLoopAddLocation(NPC, 739.73, -21.43, -23.29, 6, 0)
	MovementLoopAddLocation(NPC, 701.6, -20.12, -5.44, 6, 15)
    MovementLoopAddLocation(NPC, 705.56, -20.64, -10.23, 6, 0)	
    MovementLoopAddLocation(NPC, 701.20, -20.64, -18.38, 6, 0)
    MovementLoopAddLocation(NPC, 679.41, -20.64, -15.31, 6, 1)
    MovementLoopAddLocation(NPC, 679.41, -20.64, -15.31, 6, 6,"Elder")
    MovementLoopAddLocation(NPC, 676.70, -20.64, -13.99, 6, 0)
    MovementLoopAddLocation(NPC, 724.36, -21.22, -27.82, 6, 0)
    MovementLoopAddLocation(NPC, 747.34, -21.25, -28.78, 6, 0)
	MovementLoopAddLocation(NPC, 751.72, -21.4, -43.48, 6, 0)
	MovementLoopAddLocation(NPC, 749, -21.51, -56, 6, 0)
	MovementLoopAddLocation(NPC, 720.15, -21.39, -57.71, 6, 0)
	MovementLoopAddLocation(NPC, 787.53, -21.22, -53.04, 6, 0)
	MovementLoopAddLocation(NPC, 775.66, -20.64, -21.79, 6, 0)
	MovementLoopAddLocation(NPC, 780.69, -20.64, -19.9, 6, 60)
	MovementLoopAddLocation(NPC, 762.45, -20.71, -23.65, 6, 0)
	MovementLoopAddLocation(NPC, 757.97, -20.78, -28.01, 6, 0)
	MovementLoopAddLocation(NPC, 751.46, -21.55, -55.8, 6, 0)
	MovementLoopAddLocation(NPC, 722.5, -21.39, -56.15, 6, 0)
	MovementLoopAddLocation(NPC, 717, -20.72, -81.1, 6, 0)
	MovementLoopAddLocation(NPC, 716.36, -20.48, -92.23, 6, 1)
	MovementLoopAddLocation(NPC, 716.36, -20.48, -92.23, 6, 6,"Velwich")
	MovementLoopAddLocation(NPC, 717.02, -20.4, -93.44, 6, 0)
	MovementLoopAddLocation(NPC, 719.33, -20.78, -77.92, 6, 0)
	MovementLoopAddLocation(NPC, 719.73, -20.84, -75.24, 6, 0)
	MovementLoopAddLocation(NPC, 741.49, -21.33, -59.02, 6, 0)
	MovementLoopAddLocation(NPC, 810.85, -20.4, -62.85, 6, 0)
	MovementLoopAddLocation(NPC, 844.5, -25.36, -65.08, 6, 0)
	MovementLoopAddLocation(NPC, 869.98, -25.36, -64.87, 6, 0)
	MovementLoopAddLocation(NPC, 889.56, -25.36, -57.63, 6, 0)
	MovementLoopAddLocation(NPC, 895.09, -25.35, -48.96, 6, 0)
	MovementLoopAddLocation(NPC, 902.53, -25.32, -28.08, 6, 0)
	MovementLoopAddLocation(NPC, 907.76, -25.37, -10.78, 6, 0)
	MovementLoopAddLocation(NPC, 904.69, -25.37, 13.46, 6, 0)
	MovementLoopAddLocation(NPC, 898.53, -25.37, 31.73, 6, 0)
	MovementLoopAddLocation(NPC, 888.99, -25.49, 56.74, 6, 0)
	MovementLoopAddLocation(NPC, 883.79, -25.49, 71.17, 6, 0)
	MovementLoopAddLocation(NPC, 872.68, -25.49, 94.6, 6, 0)
	MovementLoopAddLocation(NPC, 871.31, -25.51, 98.68, 6, 0)
	MovementLoopAddLocation(NPC, 866.66, -25.51, 108.53, 6, 0)
	MovementLoopAddLocation(NPC, 851.23, -25.5, 110.11, 6, 15)
	MovementLoopAddLocation(NPC, 854.43, -25.46, 109.91, 6, 0)
	MovementLoopAddLocation(NPC, 864.17, -25.5, 112.06, 6, 0)
	MovementLoopAddLocation(NPC, 890.96, -25.52, 56.23, 6, 0)
	MovementLoopAddLocation(NPC, 885.97, -25.38, 47.24, 6, 0)
	MovementLoopAddLocation(NPC, 859.01, -25.37, 41.12, 6, 0)
	MovementLoopAddLocation(NPC, 834.36, -23.31, 44.5, 6, 0)
	MovementLoopAddLocation(NPC, 831.2, -23.31, 51.8, 6, 0)
	MovementLoopAddLocation(NPC, 819.45, -23.31, 78.92, 6, 0)
	MovementLoopAddLocation(NPC, 817.67, -23.31, 86.1, 6, 0)
	MovementLoopAddLocation(NPC, 818.65, -23.31, 101.2, 6, 0)
	MovementLoopAddLocation(NPC, 810.48, -23.32, 124.02, 6, 0)
	MovementLoopAddLocation(NPC, 808.11, -20.94, 139.94, 6, 1)
	MovementLoopAddLocation(NPC, 808.11, -20.94, 139.94, 6, 6,"Buresh")
	MovementLoopAddLocation(NPC, 809.16, -20.9, 141.91, 6, 0)
	MovementLoopAddLocation(NPC, 806.01, -20.92, 142.36, 6, 0)
	MovementLoopAddLocation(NPC, 802.61, -20.98, 135.8, 6, 0)
	MovementLoopAddLocation(NPC, 810.63, -23.31, 115.74, 6, 0)
	MovementLoopAddLocation(NPC, 815.02, -23.31, 103.28, 6, 0)
	MovementLoopAddLocation(NPC, 815.83, -23.31, 81.03, 6, 0)
	MovementLoopAddLocation(NPC, 806.01, -23.17, 79.34, 6, 0)
end




--[[

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 780.46, -23.28, 81.74, 6, 0)
	MovementLoopAddLocation(NPC, 812.79, -23.34, 79.12, 6, 0)
	MovementLoopAddLocation(NPC, 832.09, -23.31, 46.9, 6, 0)
	MovementLoopAddLocation(NPC, 861.34, -25.37, 42.41, 6, 0)
	MovementLoopAddLocation(NPC, 892.74, -25.5, 54.12, 6, 0)
	MovementLoopAddLocation(NPC, 864.29, -25.5, 111.67, 6, 0)
	MovementLoopAddLocation(NPC, 906.32, -25.37, 7.59, 6, 0)
	MovementLoopAddLocation(NPC, 891.37, -25.36, -48.18, 6, 0)
	MovementLoopAddLocation(NPC, 862.76, -25.46, -72.81, 6, 0)
	MovementLoopAddLocation(NPC, 810.88, -20.4, -61.54, 6, 0)
	MovementLoopAddLocation(NPC, 762.83, -21.57, -60.8, 6, 0)
	MovementLoopAddLocation(NPC, 762.12, -20.8, -20.16, 6, 0)
	MovementLoopAddLocation(NPC, 750.64, -20.93, 4.63, 6, 0)
	MovementLoopAddLocation(NPC, 703.9, -21.08, -53.43, 6, 0)
	MovementLoopAddLocation(NPC, 731.13, -21.32, -59.2, 6, 0)
	MovementLoopAddLocation(NPC, 885.24, -25.36, -61.67, 6, 0)
	MovementLoopAddLocation(NPC, 904.09, -25.37, 12.44, 6, 0)
	MovementLoopAddLocation(NPC, 950.73, -25.5, 32.34, 6, 0)
	MovementLoopAddLocation(NPC, 952.78, -25.5, 20.96, 6, 0)
	MovementLoopAddLocation(NPC, 950.73, -25.5, 32.34, 6, 0)
	MovementLoopAddLocation(NPC, 904.09, -25.37, 12.44, 6, 0)
	MovementLoopAddLocation(NPC, 885.24, -25.36, -61.67, 6, 0)
	MovementLoopAddLocation(NPC, 731.13, -21.32, -59.2, 6, 0)
	MovementLoopAddLocation(NPC, 703.9, -21.08, -53.43, 6, 0)
	MovementLoopAddLocation(NPC, 750.64, -20.93, 4.63, 6, 0)
	MovementLoopAddLocation(NPC, 762.12, -20.8, -20.16, 6, 0)
	MovementLoopAddLocation(NPC, 762.83, -21.57, -60.8, 6, 0)
	MovementLoopAddLocation(NPC, 810.88, -20.4, -61.54, 6, 0)
	MovementLoopAddLocation(NPC, 862.76, -25.46, -72.81, 6, 0)
	MovementLoopAddLocation(NPC, 891.37, -25.36, -48.18, 6, 0)
	MovementLoopAddLocation(NPC, 906.32, -25.37, 7.59, 6, 0)
	MovementLoopAddLocation(NPC, 864.29, -25.5, 111.67, 6, 0)
	MovementLoopAddLocation(NPC, 892.74, -25.5, 54.12, 6, 0)
	MovementLoopAddLocation(NPC, 861.34, -25.37, 42.41, 6, 0)
	MovementLoopAddLocation(NPC, 832.09, -23.31, 46.9, 6, 0)
	MovementLoopAddLocation(NPC, 812.79, -23.34, 79.12, 6, 0)
	MovementLoopAddLocation(NPC, 780.46, -23.28, 81.74, 6, 0)
end
]]--

