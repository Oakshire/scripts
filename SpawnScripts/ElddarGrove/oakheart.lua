--[[
	Script Name		:	oakheart.lua
	Script Purpose	:	Waypoint Path for oakheart.lua
	Script Author	:	Devn00b
	Script Date		:	07/31/2020 07:37:47 PM
	Script Notes	:	Quest and dialogue added - 2022.05.10 - Dorbin
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
local report = 5531

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
ProvidesQuest(NPC,report)
end

function respawn(NPC)
	spawn(NPC)
end

function Attention(NPC,Spawn)
    local Stan = GetSpawn(NPC,2070060)    
	if Stan ~=nil then
    FaceTarget(Stan,Spawn)
	PlayFlavor(Stan, "", "", "", 0, 0, Spawn)
    end	
local Edwar = GetSpawn(NPC,2070025)    
	if Edwar ~=nil then
    FaceTarget(Edwar,Spawn)
 	PlayFlavor(Edwar, "", "", "", 0, 0, Spawn)
    end	    
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
    if not HasCompletedQuest (Spawn, report) and not HasQuest (Spawn, report) then 
	    	if math.random(1, 100) <= 80 then
             FaceTarget(NPC, Spawn)
             PlayFlavor(NPC, "voiceover/english/pathfinder_oakheart/qey_elddar/100_pathed_woodelf_captain_callout1_fb0695da.mp3", "Excuse me!  We rangers could use some assistance.", "wave", 3199480334, 2514081832, Spawn)
            Attention(NPC,Spawn)
           end    
    end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    Attention(NPC,Spawn)
    else
    Attention(NPC,Spawn)
    PlayFlavor(NPC, "voiceover/english/pathfinder_oakheart/qey_elddar/pathfinderoakheart.mp3", "", "hello", 2988013661, 1300543540, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn,report) and not HasCompletedQuest(Spawn, report) then
	AddConversationOption(conversation, "Have anything I can help with?", "Option1")
	end
    if GetQuestStep(Spawn,report)==2 then
	AddConversationOption(conversation, "Master Gladwalker has your report and looks forward to the next one.", "Delivered")
	end	
	AddConversationOption(conversation, "It is a sight to behold.")
	StartConversation(conversation, NPC, Spawn, "Can you see the Elddar?  Its spirit can be felt in the beauty of the grove before you.")
    end
    end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/pathfinder_oakheart/qey_elddar/pathfinderoakheart000.mp3", "", "agree", 3865197718, 4107152769, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure.  I'll deliver your report", "StartQuest")
	AddConversationOption(conversation, "I'm not much for trees.")
	StartConversation(conversation, NPC, Spawn, "I knew you were a kindred soul to us Elddarians.  Good friend of the forest!  May I entrust you with an important errand?  Our patrol's daily report must be delivered to Master Rysian Gladewalker of our guild hall at Arbos.  Will you deliver it?")
end	

function StartQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,report)
    end

 function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/pathfinder_oakheart/qey_elddar/pathfinderoakheart002.mp3", "", "thanks", 909119300, 2923998262, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "It was no problem.  Good luck on patrol.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "I thank you friend.  You have saved us all, for we had no rangers to spare for this duty!")
end  

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,report, 2)
    end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 651.62, -18.52, -216.74, 2, 0)
	MovementLoopAddLocation(NPC, 651.2, -19.11, -228.47, 2, 0)
	MovementLoopAddLocation(NPC, 650.96, -18.56, -239.21, 2, 0)
	MovementLoopAddLocation(NPC, 649.3, -18.55, -257.68, 2, 0)
	MovementLoopAddLocation(NPC, 648.3, -18.78, -260.81, 2, 0)
	MovementLoopAddLocation(NPC, 650.31, -19.39, -271.97, 2, 0)
	MovementLoopAddLocation(NPC, 655.37, -19.5, -274.13, 2, 0)
	MovementLoopAddLocation(NPC, 661.86, -19.5, -274.01, 2, 0)
	MovementLoopAddLocation(NPC, 672.65, -19.87, -275.45, 2, 0)
	MovementLoopAddLocation(NPC, 683.61, -19.62, -278.04, 2, 0)
	MovementLoopAddLocation(NPC, 687.33, -19.6, -283.48, 2, 0)
	MovementLoopAddLocation(NPC, 690.65, -19.51, -291.91, 2, 0)
	MovementLoopAddLocation(NPC, 694.67, -18.99, -300.76, 2, 0)
	MovementLoopAddLocation(NPC, 702.75, -17.8, -298.95, 2, 0)
	MovementLoopAddLocation(NPC, 701.84, -17.91, -293.68, 2, 0)
	MovementLoopAddLocation(NPC, 699.73, -18.27, -292.11, 2, 0)
	MovementLoopAddLocation(NPC, 691.79, -19.21, -281.48, 2, 0)
	MovementLoopAddLocation(NPC, 687.51, -19.05, -276.04, 2, 0)
	MovementLoopAddLocation(NPC, 663.58, -19.38, -272.65, 2, 0)
	MovementLoopAddLocation(NPC, 653.35, -19.58, -274.32, 2, 0)
	MovementLoopAddLocation(NPC, 650.97, -20.63, -283.98, 2, 0)
	MovementLoopAddLocation(NPC, 650.24, -21.45, -307.54, 2, 0)
	MovementLoopAddLocation(NPC, 647.76, -21, -310.35, 2, 0)
	MovementLoopAddLocation(NPC, 642.38, -20.44, -311.78, 2, 0)
	MovementLoopAddLocation(NPC, 607.11, -20.67, -315.08, 2, 0)
	MovementLoopAddLocation(NPC, 589.36, -21.32, -313.55, 2, 0)
	MovementLoopAddLocation(NPC, 564.69, -21.93, -312.43, 2, 0)
	MovementLoopAddLocation(NPC, 554.11, -21.57, -310.27, 2, 0)
	MovementLoopAddLocation(NPC, 545.42, -21.12, -304.81, 2, 0)
	MovementLoopAddLocation(NPC, 530.72, -20.81, -299.34, 2, 0)
	MovementLoopAddLocation(NPC, 526.76, -20.9, -303.83, 2, 0)
	MovementLoopAddLocation(NPC, 528.67, -21, -313.45, 2, 0)
	MovementLoopAddLocation(NPC, 531.91, -21.04, -324.61, 2, 0)
	MovementLoopAddLocation(NPC, 544.36, -21.2, -324.18, 2, 0)
	MovementLoopAddLocation(NPC, 553.28, -21.6, -312.78, 2, 0)
	MovementLoopAddLocation(NPC, 610.56, -20.58, -315.37, 2, 0)
	MovementLoopAddLocation(NPC, 634.13, -20.18, -311.07, 2, 0)
	MovementLoopAddLocation(NPC, 644.15, -20.61, -310.84, 2, 0)
	MovementLoopAddLocation(NPC, 649.75, -21.7, -303.78, 2, 0)
	MovementLoopAddLocation(NPC, 650.54, -22.04, -300.86, 2, 0)
	MovementLoopAddLocation(NPC, 650.59, -20.8, -285.56, 2, 0)
	MovementLoopAddLocation(NPC, 649.71, -19.99, -277.58, 2, 0)
	MovementLoopAddLocation(NPC, 641.19, -19.1, -266.37, 2, 0)
	MovementLoopAddLocation(NPC, 642.42, -18.92, -260.07, 2, 0)
	MovementLoopAddLocation(NPC, 645.8, -18.58, -251.33, 2, 0)
	MovementLoopAddLocation(NPC, 647.23, -18.75, -236.16, 2, 0)
	MovementLoopAddLocation(NPC, 649.26, -18.76, -217.19, 2, 0)
	MovementLoopAddLocation(NPC, 648.11, -18.31, -214.19, 2, 0)
	MovementLoopAddLocation(NPC, 650.17, -18.2, -211.09, 2, 0)
	MovementLoopAddLocation(NPC, 652.65, -18.09, -211.48, 2, 0)
end

--[[ Wrong Waypoints via Devnoob.  Pre-group patrol.
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 584.13, -18.24, -408.66, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 621.86, -15.32, -403.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.44, -11.39, -395.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.06, -13.16, -365.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 643.87, -18.16, -325.84, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.06, -13.16, -365.23, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 652.44, -11.39, -395.35, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 621.86, -15.32, -403.71, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 584.13, -18.24, -408.66, 2, math.random(0,8))
end

--]]
