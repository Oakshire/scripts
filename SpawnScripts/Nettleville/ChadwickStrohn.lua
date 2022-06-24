--[[
    Script Name    : SpawnScripts/Nettleville/ChadwickStrohn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 08:06:43
    Script Purpose : Handles Chadwick and 'a pig' in Nettleville
                   : 
--]]

local Catchase = false
local Pigchase = false

function spawn(NPC)
waypoints(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
if Pigchase == true then
elseif Catchase == true then 
else    
    FaceTarget(NPC, Spawn)
	local choice = math.random(1,3)
	if choice == 1 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_badkid/ft/eco/evil/human_eco_evil_badkid_hail_gm_260df31b.mp3", "Why is one moon shattered?", "confused", 724051424, 3894623534, Spawn)
		elseif choice == 2 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_5674cc18.mp3", "Have you seen a Gnoll before?", "stare", 3064755312, 374536170, Spawn)
		elseif choice == 3 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_110eef44.mp3", "Have you been inside the castle? I want to go there someday!", "happy", 2372987392, 3554768792, Spawn)
    end
end
end

function InRange(NPC, Spawn)
    if Pigchase == true then
   	if math.random(1,100)<80 then	
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_badkid/ft/eco/evil/human_eco_evil_badkid_pig_gm_9fa4475d.mp3", "Run ya swine. Run!", "wave", 1654188343, 2070658176, Spawn)
    end
    elseif Catchase == true then
     if math.random(1,100)<75 then	
     PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_cat_gm_fdc32a9.mp3", "Come back here kitty!", "wave", 204283170, 334524744, Spawn)
    end
    else	
	if math.random(1,100)<40 then	
		local choice = math.random(1,3)
	    if choice == 1 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_badkid/ft/eco/evil/human_eco_evil_badkid_idle_gm_f99b7170.mp3", "I'm bored!  Won't anybody give me attention?", "pout", 3445293505, 1372827083, Spawn)
		elseif choice == 2 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_5674cc18.mp3", "Have you seen a Gnoll before?", "stare", 3064755312, 374536170, Spawn)
		elseif choice == 3 then
	    FaceTarget(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_annoyingkid/ft/eco/good/human_eco_good_annoyingkid_hail_gm_110eef44.mp3", "Have you been inside the castle? I want to go there someday!", "smile", 2372987392, 3554768792, Spawn)
		end
		end
end
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 634.92, -22.43, 363.3, 2, 15)
	MovementLoopAddLocation(NPC, 635.46, -22.38, 357.35, 2, 0)
	MovementLoopAddLocation(NPC, 637.92, -22.33, 350.12, 2, 0)
	MovementLoopAddLocation(NPC, 642.96, -22.32, 343.15, 2, 0)
	MovementLoopAddLocation(NPC, 648.82, -22.32, 335.03, 2, 0)
	MovementLoopAddLocation(NPC, 651.41, -22.32, 332.37, 2, 15)
	MovementLoopAddLocation(NPC, 653.89, -22.31, 332.66, 2, 0)
	MovementLoopAddLocation(NPC, 661.08, -22.49, 336.06, 2, 0)
	MovementLoopAddLocation(NPC, 667.46, -22.84, 339.69, 2, 0)
	MovementLoopAddLocation(NPC, 670.24, -24.13, 344.98, 2, 0)
	MovementLoopAddLocation(NPC, 668.91, -24.43, 346.75, 2, 0)
	MovementLoopAddLocation(NPC, 662.86, -24.84, 356.93, 2, 0)
	MovementLoopAddLocation(NPC, 658.4, -24.8, 361.98, 2, 0)
	MovementLoopAddLocation(NPC, 655.21, -24.82, 361.93, 2, 1)
	MovementLoopAddLocation(NPC, 655.21, -24.82, 361.93, 2, 2,"neener")
	MovementLoopAddLocation(NPC, 655.21, -24.82, 361.93, 2, 2,"PigSqueal")
	MovementLoopAddLocation(NPC, 655.21, -24.82, 361.93, 2, 1,"Pig")
	MovementLoopAddLocation(NPC, 655.21, -24.82, 361.93, 2, 1)
	MovementLoopAddLocation(NPC, 649.77, -24.71, 366.83, 6, 0)
	MovementLoopAddLocation(NPC, 644.8, -24.73, 372.06, 6, 0)
	MovementLoopAddLocation(NPC, 640.61, -24.81, 376.47, 6, 0)
	MovementLoopAddLocation(NPC, 632.58, -25.04, 377.13, 6, 0)
	MovementLoopAddLocation(NPC, 621.22, -25.9, 376.4, 6, 0)
	MovementLoopAddLocation(NPC, 609.43, -26.46, 375.28, 6, 0)
	MovementLoopAddLocation(NPC, 606.95, -25.39, 369.76, 6, 0)
	MovementLoopAddLocation(NPC, 605.27, -21.94, 361.95, 6, 0)
	MovementLoopAddLocation(NPC, 605.07, -20.69, 356.65, 6, 0)
	MovementLoopAddLocation(NPC, 604.79, -20.56, 349.65, 6, 0)
	MovementLoopAddLocation(NPC, 595.08, -20.26, 347.28, 6, 0)
	MovementLoopAddLocation(NPC, 581.54, -20.31, 344.05, 6, 1)
--	MovementLoopAddLocation(NPC, 574.34, -20.41, 340.73, 6, 0)
--	MovementLoopAddLocation(NPC, 575.72, -20.41, 340.74, 6, 0)
	MovementLoopAddLocation(NPC, 591.25, -20.33, 344.83, 6, 0)
	MovementLoopAddLocation(NPC, 599.61, -20.68, 346.92, 6, 0)
	MovementLoopAddLocation(NPC, 603.49, -20.79, 344.01, 6, 0)
	MovementLoopAddLocation(NPC, 606.63, -20.7, 335.27, 6, 0)
	MovementLoopAddLocation(NPC, 609.71, -20.71, 329.38, 6, 0)
	MovementLoopAddLocation(NPC, 614.88, -20.61, 322.42, 6, 0)
	MovementLoopAddLocation(NPC, 620.45, -20.53, 315.89, 6, 0)
	MovementLoopAddLocation(NPC, 626.89, -20.55, 310.13, 6, 0)
	MovementLoopAddLocation(NPC, 637, -20.67, 304.93, 6, 0)
	MovementLoopAddLocation(NPC, 646.49, -20.48, 300.08, 6, 0)
	MovementLoopAddLocation(NPC, 654.5, -20.42, 297, 6, 0)
	MovementLoopAddLocation(NPC, 659.34, -20.42, 297.46, 6, 0)
	MovementLoopAddLocation(NPC, 660.54, -20.42, 299.88, 6, 2,"PigReset")
	MovementLoopAddLocation(NPC, 660.54, -20.42, 299.88, 6, 1,"TargetReset")
	MovementLoopAddLocation(NPC, 670.98, -20.25, 306.57, 2, 15)
	MovementLoopAddLocation(NPC, 671.71, -20.25, 307.77, 2, 0)
	MovementLoopAddLocation(NPC, 671.22, -20.32, 309.29, 2, 0)
	MovementLoopAddLocation(NPC, 672.09, -20.42, 316.63, 2, 0)
	MovementLoopAddLocation(NPC, 672.79, -20.43, 318.77, 2, 0)
	MovementLoopAddLocation(NPC, 674.99, -20.43, 319.12, 2, 1)
	MovementLoopAddLocation(NPC, 674.99, -20.43, 319.12, 2, 15,"neener")
	MovementLoopAddLocation(NPC, 675.62, -20.42, 319.34, 2, 0)
	MovementLoopAddLocation(NPC, 672.4, -20.43, 322.16, 2, 0)
	MovementLoopAddLocation(NPC, 664.63, -20.44, 327.29, 2, 0)
	MovementLoopAddLocation(NPC, 659, -22.28, 329.43, 2, 0)
	MovementLoopAddLocation(NPC, 654.27, -22.31, 330.52, 2, 0)
	MovementLoopAddLocation(NPC, 650.45, -22.32, 333.47, 2, 0)
	MovementLoopAddLocation(NPC, 643.69, -22.32, 341.68, 2, 0)
	MovementLoopAddLocation(NPC, 640.43, -22.32, 345.62, 2, 0)
	MovementLoopAddLocation(NPC, 638.23, -22.33, 350.33, 2, 0)
	MovementLoopAddLocation(NPC, 638.41, -22.4, 354.07, 2, 1)
	MovementLoopAddLocation(NPC, 638.41, -22.4, 354.07, 2, 15,"neener")
	MovementLoopAddLocation(NPC, 636.95, -22.4, 356.32, 2, 0)
	MovementLoopAddLocation(NPC, 635.52, -22.42, 362.85, 2, 0)
	MovementLoopAddLocation(NPC, 635.29, -22.41, 367.14, 2, 0)
	MovementLoopAddLocation(NPC, 635.92, -22.33, 368.93, 2, 0)
	MovementLoopAddLocation(NPC, 639.55, -23.13, 368.54, 2, 0)
	MovementLoopAddLocation(NPC, 644.21, -24.82, 366.59, 2, 0)
	MovementLoopAddLocation(NPC, 645.42, -24.84, 363.59, 2, 1)
	MovementLoopAddLocation(NPC, 645.42, -24.84, 363.59, 2, 15,"neener")
	MovementLoopAddLocation(NPC, 648.14, -24.77, 365.32, 2, 0)
	MovementLoopAddLocation(NPC, 645.67, -24.73, 370.53, 2, 0)
	MovementLoopAddLocation(NPC, 644.26, -24.74, 373.52, 2, 0)
	MovementLoopAddLocation(NPC, 636.33, -24.91, 379.44, 2, 0)
	MovementLoopAddLocation(NPC, 629.75, -25.29, 378.56, 2, 0)
	MovementLoopAddLocation(NPC, 623.04, -25.59, 373.93, 2, 0)
	MovementLoopAddLocation(NPC, 613.39, -26.39, 376.53, 2, 0)
	MovementLoopAddLocation(NPC, 604.15, -26.45, 375.29, 2, 0)
	MovementLoopAddLocation(NPC, 592.82, -26.08, 376.21, 2, 0)
	MovementLoopAddLocation(NPC, 581.35, -26.82, 377.72, 2, 35,"PigMove1")
	MovementLoopAddLocation(NPC, 579.81, -26.67, 379.43, 2, 0)
	MovementLoopAddLocation(NPC, 585.48, -26.87, 379.46, 2, 0)
	MovementLoopAddLocation(NPC, 591.96, -26.3, 377.77, 2, 0)
	MovementLoopAddLocation(NPC, 597.4, -26.33, 377.59, 2, 0)
	MovementLoopAddLocation(NPC, 598.99, -26.5, 380.39, 2, 15)
	MovementLoopAddLocation(NPC, 599.89, -26.52, 381.95, 2, 0)
	MovementLoopAddLocation(NPC, 602.15, -26.51, 379.59, 2, 0)
	MovementLoopAddLocation(NPC, 611.84, -26.44, 377.32, 2, 0)
	MovementLoopAddLocation(NPC, 613.24, -26.41, 377.27, 2, 0)
	MovementLoopAddLocation(NPC, 613.54, -26.4, 377.59, 2, 15)
	MovementLoopAddLocation(NPC, 614.38, -26.41, 379.18, 2, 0)
	MovementLoopAddLocation(NPC, 613.65, -26.38, 376.25, 2, 0)
	MovementLoopAddLocation(NPC, 609.25, -25.83, 370.37, 2, 0)
	MovementLoopAddLocation(NPC, 606.29, -23.08, 364.38, 2, 0)
	MovementLoopAddLocation(NPC, 605.11, -20.69, 356.49, 2, 0)
	MovementLoopAddLocation(NPC, 604.56, -20.53, 352.8, 2, 0)
	MovementLoopAddLocation(NPC, 601.62, -20.41, 350.55, 2, 0)
	MovementLoopAddLocation(NPC, 594.09, -20.28, 346.96, 2, 0)
	MovementLoopAddLocation(NPC, 589.24, -19.27, 350.01, 2, 0)
	MovementLoopAddLocation(NPC, 586.03, -19.24, 349.79, 2, 0)
	MovementLoopAddLocation(NPC, 578.7, -19.28, 348.29, 2, 0)
	MovementLoopAddLocation(NPC, 575.28, -19.18, 350.79, 2, 0)
	MovementLoopAddLocation(NPC, 571.98, -18.96, 355.52, 2, 0)
	MovementLoopAddLocation(NPC, 571.12, -18.94, 357.1, 2, 0)
	MovementLoopAddLocation(NPC, 570.91, -19.02, 363.37, 2, 1)
	MovementLoopAddLocation(NPC, 570.91, -19.02, 363.37, 2, 15,"neener")
	MovementLoopAddLocation(NPC, 570.84, -19.12, 364.39, 2, 0)
	MovementLoopAddLocation(NPC, 570.02, -18.97, 359.15, 2, 0)
	MovementLoopAddLocation(NPC, 571.21, -18.85, 353.21, 2, 0)
	MovementLoopAddLocation(NPC, 574.09, -19.13, 350.81, 2, 0)
	MovementLoopAddLocation(NPC, 577.43, -19.29, 349.12, 2, 0)
	MovementLoopAddLocation(NPC, 580.33, -19.22, 348.68, 2, 0)
	MovementLoopAddLocation(NPC, 588.84, -19.23, 350.49, 2, 0)
	MovementLoopAddLocation(NPC, 593, -20.29, 346.95, 2, 0)
	MovementLoopAddLocation(NPC, 601.88, -20.77, 344.48, 2, 0)
	MovementLoopAddLocation(NPC, 605.8, -20.66, 334.46, 2, 0)
	MovementLoopAddLocation(NPC, 610.53, -20.72, 326.47, 2, 0)
	MovementLoopAddLocation(NPC, 620.65, -20.38, 322.33, 2, 15,"PigMove2")
	MovementLoopAddLocation(NPC, 620.65, -20.38, 322.33, 2, 0)
	MovementLoopAddLocation(NPC, 618.62, -20.51, 321.01, 2, 0)
	MovementLoopAddLocation(NPC, 617.7, -20.54, 317.4, 2, 0)
	MovementLoopAddLocation(NPC, 623.85, -20.5, 311.39, 2, 0)
	MovementLoopAddLocation(NPC, 629.39, -20.58, 308.95, 2, 0)
	MovementLoopAddLocation(NPC, 640.84, -20.61, 301.91, 2, 0)
	MovementLoopAddLocation(NPC, 647.21, -20.48, 298.36, 2, 0)
	MovementLoopAddLocation(NPC, 654.05, -20.42, 295.79, 2, 0)
	MovementLoopAddLocation(NPC, 661.43, -20.29, 294.29, 2, 0)
	MovementLoopAddLocation(NPC, 644.74, -20.51, 300.42, 2, 2,"Cat")
	MovementLoopAddLocation(NPC, 629.75, -20.6, 308.67, 6, 0)
	MovementLoopAddLocation(NPC, 618.17, -20.55, 317.94, 6, 0)
	MovementLoopAddLocation(NPC, 609.25, -20.61, 331.62, 6, 0)
	MovementLoopAddLocation(NPC, 606.39, -20.8, 341.18, 6, 0)
	MovementLoopAddLocation(NPC, 602.99, -20.44, 351.8, 6, 2,"CatReset")
	MovementLoopAddLocation(NPC, 603.21, -20.49, 351.42, 2, 0)
	MovementLoopAddLocation(NPC, 605.02, -21.5, 361, 2, 0)
	MovementLoopAddLocation(NPC, 611.4, -26.41, 372.52, 2, 0)
	MovementLoopAddLocation(NPC, 613.51, -26.36, 373.25, 2, 0)
	MovementLoopAddLocation(NPC, 619.96, -25.8, 371.81, 2, 0)
	MovementLoopAddLocation(NPC, 626.81, -25, 369.75, 2, 0)
	MovementLoopAddLocation(NPC, 634.69, -22.32, 369.85, 2, 0)
end


function Cat(NPC)
    Catchase = true
end

function CatReset(NPC)
 Catchase = false
end

function PigReset(NPC)
    Pigchase = false
end

function TargetReset(NPC)
    SetTarget(NPC,nil)
end 

function PigSqueal(NPC)
 local pig = GetSpawn(NPC,2330002)
    if pig ~=nil then    
        PlayFlavor(pig,"","","attack",0,0)
    end        
end

function neener(NPC)
 	local choice = math.random(1,3)
    if choice == 1 then   
    PlayAnimation(NPC,11880)
    elseif choice == 2 then
    PlayFlavor(NPC,"","","peer",0,0)
    elseif choice == 2 then
    PlayFlavor(NPC,"","","ponder",0,0)
  end  
end


function Pig(NPC)
        Pigchase = true
        local pig = GetSpawn(NPC,2330002)
    if pig ~=nil then
    SetTarget(NPC,pig)
    PlayFlavor(pig,"","","attack",0,0)
    MoveToLocation(pig, 649.77, -24.71, 366.83, 6)
	MoveToLocation(pig, 644.8, -24.73, 372.06, 6)
	MoveToLocation(pig, 640.61, -24.81, 376.47, 6)
	MoveToLocation(pig, 632.58, -25.04, 377.13, 6)
	MoveToLocation(pig, 621.22, -25.9, 376.4, 6)
	MoveToLocation(pig, 609.43, -26.46, 375.28, 6)
	MoveToLocation(pig, 606.95, -25.39, 369.76, 6)
	MoveToLocation(pig, 605.27, -21.94, 361.95, 6)
	MoveToLocation(pig, 605.07, -20.69, 356.65, 6)
	MoveToLocation(pig, 604.79, -20.56, 349.65, 6)
	MoveToLocation(pig, 595.08, -20.26, 347.28, 6)
	MoveToLocation(pig, 581.54, -20.31, 344.05, 6)
	MoveToLocation(pig, 574.34, -20.41, 340.73, 6)
	MoveToLocation(pig, 575.72, -20.41, 340.74, 6)
	MoveToLocation(pig, 591.25, -20.33, 344.83, 6)
	MoveToLocation(pig, 599.61, -20.68, 346.92, 6)
	MoveToLocation(pig, 603.49, -20.79, 344.01, 6)
	MoveToLocation(pig, 606.63, -20.7, 335.27, 6)
	MoveToLocation(pig, 609.71, -20.71, 329.38, 6)
	MoveToLocation(pig, 614.88, -20.61, 322.42, 6)
	MoveToLocation(pig, 620.45, -20.53, 315.89, 6)
	MoveToLocation(pig, 626.89, -20.55, 310.13, 6)
	MoveToLocation(pig, 637, -20.67, 304.93, 6)
	MoveToLocation(pig, 646.49, -20.48, 300.08, 6)
	MoveToLocation(pig, 654.5, -20.42, 297, 6)
	MoveToLocation(pig, 659.34, -20.42, 297.46, 6)
	MoveToLocation(pig, 660.54, -20.42, 299.88, 6)
	MoveToLocation(pig, 673.12, -19.93, 290.49, 6)
	MoveToLocation(pig, 672.45, -19.97, 288.59, 2)
	MoveToLocation(pig, 672.00, -19.94, 289.72, 1)
	MoveToLocation(pig, 672.00, -19.94, 289.72, 1)
end
end

function PigTimer1(NPC)
AddTimer(NPC,45000,"PigMove1")
end

function PigMove1(NPC)
        local pig = GetSpawn(NPC,2330002)
    if pig ~=nil then
    MoveToLocation(pig, 671.29, -19.94, 292.2, 1)
	MoveToLocation(pig, 669.94, -20.12, 297.74, 1)
	MoveToLocation(pig, 669.86, -20.25, 305.66, 1)
	MoveToLocation(pig, 670.41, -20.42, 312.35, 1)
	MoveToLocation(pig, 671.77, -20.42, 317.79, 1)
	MoveToLocation(pig, 671.49, -20.43, 321.41, 1)
	MoveToLocation(pig, 667.06, -20.44, 324.92, 1)
	MoveToLocation(pig, 665.14, -20.44, 326.46, 1)
	MoveToLocation(pig, 658.32, -22.28, 328.34, 1)
	MoveToLocation(pig, 658.79, -22.29, 331.04, 1)
	MoveToLocation(pig, 658.97, -22.31, 332.07, 1)
	MoveToLocation(pig, 663.87, -22.27, 334.31, 1)
	MoveToLocation(pig, 665.19, -22.16, 334.69, 1,"PigTimer2")
end
end

function PigTimer2(NPC)
AddTimer(NPC,65000,"PigMove2")
end

function PigMove2(NPC)
        local pig = GetSpawn(NPC,2330002)
    if pig ~=nil then
    MoveToLocation(pig, 666.27, -22.32, 336.64, 1)
	MoveToLocation(pig, 668.8, -22.59, 339.29, 1)
	MoveToLocation(pig, 671.01, -23.17, 341.6, 1)
	MoveToLocation(pig, 672.05, -24.06, 345.08, 1)
	MoveToLocation(pig, 670.15, -24.63, 348.84, 1)
	MoveToLocation(pig, 666.9, -24.83, 353.34, 1)
	MoveToLocation(pig, 665.02, -24.84, 355.95, 1)
	MoveToLocation(pig, 663.44, -24.84, 358.14, 1)
	MoveToLocation(pig, 661.44, -24.83, 359.95, 1)
	MoveToLocation(pig, 657.94, -24.79, 362.44, 1)
	MoveToLocation(pig, 655.28, -24.8, 363.1, 1)
	MoveToLocation(pig, 653.53, -24.8, 363.54, 1)
	MoveToLocation(pig, 650.86, -24.83, 363.13, 1)
	MoveToLocation(pig, 648.4, -24.84, 363.1, 1)
	MoveToLocation(pig, 648.03, -24.83, 363.87, 1)
end
end


