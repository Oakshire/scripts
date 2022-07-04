--[[
    Script Name    : SpawnScripts/Starcrest/HobertDawsim.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 11:06:57
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")	
end

function InRange(NPC, Spawn) 
    if GetFactionAmount(Spawn,11)<0 then
        FactionCheckingCallout(NPC, Spawn, faction)
        else
    GenericDrunkCallout(NPC, Spawn, faction)    
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        FactionChecking(NPC, Spawn, faction)
    else
    GenericDrunkHail(NPC, Spawn, faction)
end
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 710.88, -19.96, 281.28, 2, 1)
	MovementLoopAddLocation(NPC, 710.88, -19.96, 281.28, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 710.88, -19.96, 281.28, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 711.13, -19.97, 281.67, 2, 0)
	MovementLoopAddLocation(NPC, 711.82, -19.94, 280.92, 2, 0)
	MovementLoopAddLocation(NPC, 707.26, -19.99, 277.68, 2, 1)
	MovementLoopAddLocation(NPC, 707.26, -19.99, 277.68, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 707.84, -20.01, 276.83, 2, 0)
	MovementLoopAddLocation(NPC, 718.21, -20.35, 264.27, 2, 1)
	MovementLoopAddLocation(NPC, 718.21, -20.35, 264.27, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 718.21, -20.35, 264.27, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 716.15, -20.26, 268.5, 2, 0)
	MovementLoopAddLocation(NPC, 706.29, -20.06, 276.1, 2, 1)
	MovementLoopAddLocation(NPC, 706.29, -20.06, 276.1, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 706.29, -20.06, 276.1, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 708.17, -20, 276.71, 2, 0)
	MovementLoopAddLocation(NPC, 710.82, -19.97, 281.51, 2, 1)
	MovementLoopAddLocation(NPC, 710.82, -19.97, 281.51, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 710.82, -19.97, 281.51, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 711.21, -19.98, 282.07, 2, 0)
	MovementLoopAddLocation(NPC, 710.54, -19.93, 278.29, 2, 0)
	MovementLoopAddLocation(NPC, 718.62, -20.31, 267.87, 2, 1)
	MovementLoopAddLocation(NPC, 718.62, -20.31, 267.87, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 718.62, -20.31, 267.87, 2, 35,"Drink")
	MovementLoopAddLocation(NPC, 717.12, -20.27, 268.8, 2, 0)
	MovementLoopAddLocation(NPC, 710.21, -20.25, 268.68, 2, 0)
	MovementLoopAddLocation(NPC, 709.16, -20.24, 269.13, 2, 1)
	MovementLoopAddLocation(NPC, 709.16, -20.24, 269.13, 2, 12,"GuardCallout")
	MovementLoopAddLocation(NPC, 709.16, -20.24, 269.13, 2, 1)
	MovementLoopAddLocation(NPC, 707.97, -20, 276.83, 2, 0)
	MovementLoopAddLocation(NPC, 710.03, -19.92, 279.83, 2, 0)
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
        PlayFlavor(NPC,"","","hungry",0,0)
        else
        PlayAnimation(NPC,11668)
        end            
    AddTimer(NPC,6000, "Drink3")
end

function Drink3(NPC)
    PlayAnimation(NPC,11422)
end
   
 function GuardCallout(NPC,Spawn)
     local Trino = GetSpawn(NPC, 2340015)
if not HasCompletedQuest(Spawn,246)	then
	if Trino ~= nil then 
    choice = math.random(1,3)
    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_guard_gm_c874c635.mp3","I know..I shoul'n drink... Forgive me sir!","gut",1370911065,1198399974,Spawn)
        PlayFlavor(Trino,"","","shame",0,0)
    elseif choice == 2 then
         PlayFlavor(NPC,"voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_guard_gm_b5bfa487.mp3","Look sir.  I just had'one ale n' hour ago withh dinner.","no",1705294225,1483651602,Spawn)
        PlayFlavor(Trino)
     elseif choice == 3 then
         PlayFlavor(NPC,"voiceover/english/human_eco_evil_drunk/ft/eco/evil/human_eco_evil_drunk_guard_gm_153d5a3.mp3","Let's have a drink and forget we ever met!","agree",2964980286,4014491635,Spawn)
        PlayFlavor(Trino,"","","sniff",0,0)
    end      
end  
end   
end