--[[
	Script Name		:	fanthis.lua
	Script Purpose	:	Waypoint Path for fanthis.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:33:49 PM
	Script Notes	:	Locations collected from Live
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local arrows = 5521

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
ProvidesQuest(NPC,arrows)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
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


function InRange(NPC,Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
 else
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
