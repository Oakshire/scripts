--[[
	Script Name		:	fanthis.lua
	Script Purpose	:	Waypoint Path for fanthis.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:49 PM
	Script Notes	:	Locations collected from Live
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local arrows = 5521

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
ProvidesQuest(NPC,arrows)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    Attention(NPC,Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
    Attention(NPC,Spawn)
    PlayFlavor(NPC, "voiceover/english/patrolman_fanthis/qey_elddar/patrolmanfanthis.mp3", "", "hello", 1693710437, 2806489580, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn,arrows) and not HasCompletedQuest(Spawn, arrows) then
	AddConversationOption(conversation, "Do you need assistance while on duty?", "Option1")
	end
    if GetQuestStep(Spawn,arrows)==2 then
	AddConversationOption(conversation, "Here are the arrows.  Nightbow said not to keep her waiting so long next time.", "Delivered")
	end	
	AddConversationOption(conversation, "Good day, then.")
	StartConversation(conversation, NPC, Spawn, "Greetings!  I am Patrolman Fanthis.  Sadly, I have no time to speak while on duty.")
    end
end

function Attention(NPC,Spawn)
local Vera = GetSpawn(NPC,2070081)    
	if Vera ~=nil then
    FaceTarget(Vera,Spawn)
	PlayFlavor(Vera, "", "", "attention", 0, 0, Spawn)
    end	
end

function InRange(NPC,Spawn)
    NonCitizen(NPC,Spawn)    
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
  elseif GetFactionAmount(Spawn,11) >20000 then
     if not HasCompletedQuest (Spawn, arrows) and not HasQuest (Spawn, arrows) then 
	    	if math.random(1, 100) <= 80 then
            PlayFlavor(NPC, "voiceover/english/patrolman_fanthis/qey_elddar/100_patrolman_halfelf_fanthis_callout1_9ff23be1.mp3", "Greetings!  I am Patrolman Fanthis.  I wish I had time to chat, but duty calls.", "attention", 2986438322, 1619790403, Spawn)
            end    
    end
end
end

function respawn(NPC)
	spawn(NPC)
end



function waypoints(NPC)
	MovementLoopAddLocation(NPC, 652.61, -12.3, -363.84, 2, 0)
	MovementLoopAddLocation(NPC, 662.62, -11.36, -366.19, 2, 0)
	MovementLoopAddLocation(NPC, 669.77, -11.62, -368.11, 2, 0)
	MovementLoopAddLocation(NPC, 677.77, -12.09, -371.28, 2, 0)
	MovementLoopAddLocation(NPC, 687.73, -13.16, -375.44, 2, 0)
	MovementLoopAddLocation(NPC, 698.25, -14.21, -381.31, 2, 0)
	MovementLoopAddLocation(NPC, 702.28, -14.68, -382.77, 2, 0)
	MovementLoopAddLocation(NPC, 702.93, -14.13, -390.06, 2, 0)
	MovementLoopAddLocation(NPC, 702.29, -14.04, -400.43, 2, 0)
	MovementLoopAddLocation(NPC, 701.55, -14.5, -408.55, 2, 0)
	MovementLoopAddLocation(NPC, 698.8, -14.31, -410.2, 2, 0)
	MovementLoopAddLocation(NPC, 696.68, -13.96, -409.18, 2, 0)
	MovementLoopAddLocation(NPC, 687.68, -12.52, -400.81, 2, 0)
	MovementLoopAddLocation(NPC, 679.77, -11.63, -395.53, 2, 0)
	MovementLoopAddLocation(NPC, 664.07, -10.72, -397.75, 2, 0)
	MovementLoopAddLocation(NPC, 656.01, -10.98, -398.79, 2, 0)
	MovementLoopAddLocation(NPC, 650.85, -11.4, -391.46, 2, 0)
	MovementLoopAddLocation(NPC, 647.07, -11.87, -381.53, 2, 0)
	MovementLoopAddLocation(NPC, 643.83, -12.55, -373.03, 2, 0)
	MovementLoopAddLocation(NPC, 592.8, -21, -367.06, 2, 0)
	MovementLoopAddLocation(NPC, 579.34, -21.62, -365.14, 2, 0)
	MovementLoopAddLocation(NPC, 571.17, -21.58, -364.76, 2, 0)
	MovementLoopAddLocation(NPC, 556.77, -19.42, -367.04, 2, 0)
	MovementLoopAddLocation(NPC, 548.24, -19.31, -362.96, 2, 0)
	MovementLoopAddLocation(NPC, 544.99, -19.87, -354.35, 2, 0)
	MovementLoopAddLocation(NPC, 549.43, -20.32, -346.18, 2, 0)
	MovementLoopAddLocation(NPC, 554.78, -20.48, -341.17, 2, 0)
	MovementLoopAddLocation(NPC, 559.25, -20.5, -344.45, 2, 0)
	MovementLoopAddLocation(NPC, 573.92, -22.06, -357.46, 2, 0)
	MovementLoopAddLocation(NPC, 576.37, -21.92, -358.99, 2, 0)
	MovementLoopAddLocation(NPC, 586.55, -21.74, -361.98, 2, 0)
	MovementLoopAddLocation(NPC, 599.09, -20.19, -366, 2, 0)
	MovementLoopAddLocation(NPC, 611.97, -18.14, -366.74, 2, 0)
	MovementLoopAddLocation(NPC, 646.26, -12.73, -367.6, 2, 0)
	MovementLoopAddLocation(NPC, 647.4, -12.85, -364.6, 2, 0)
	MovementLoopAddLocation(NPC, 647.6, -13.84, -351.06, 2, 0)
	MovementLoopAddLocation(NPC, 646.7, -17.86, -328.97, 2, 0)
	MovementLoopAddLocation(NPC, 642.52, -18.52, -322.35, 2, 0)
	MovementLoopAddLocation(NPC, 643.21, -17.5, -328.53, 2, 0)
	MovementLoopAddLocation(NPC, 646.13, -13.6, -355.21, 2, 0)
	MovementLoopAddLocation(NPC, 648.31, -13.03, -361.11, 2, 0)
end







--[[ Old/Wrong pathing via Devnoob.  Pre-group patrol

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 648.13, -13.26, -358.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.13, -19.97, -319.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.47, -21.65, -305.03, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.59, -19.68, -274.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.91, -19.39, -273.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 686.92, -19.49, -279.5, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 698.27, -17.96, -309.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 704.73, -17.06, -332.45, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 698.27, -17.96, -309.4, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 686.92, -19.49, -279.5, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 660.91, -19.39, -273.14, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 651.59, -19.68, -274.91, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.47, -21.65, -305.03, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 646.13, -19.97, -319.17, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.13, -13.26, -358.4, 2, math.random(0,8))
end

]]--

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/patrolman_fanthis/qey_elddar/patrolmanfanthis000.mp3", "", "agree", 855383288, 3555158222, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll head over and pick them up for you.", "StartQuest")
	AddConversationOption(conversation, "Hmm, not sure I really have the time either. Sorry.")
	StartConversation(conversation, NPC, Spawn, "Well, since you're offering I need some arrows picked up from a shop called In-Range on the northeast side of the grove.  I've been meaning to pick up the arrows for a week, but I'm too busy to spare the time.")
end	

function StartQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,arrows)
    end

 function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/patrolman_fanthis/qey_elddar/patrolmanfanthis002.mp3", "", "thank", 3229545703, 429402997, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "It was no problem.  Good luck on patrol.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Ah, yes! Perfect timing.  I spent my last quiver full of arrows in practice at the range, but all of my patrols have prevented me from picking them up.  ")
end  

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,arrows, 2)
    end
