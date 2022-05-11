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

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
    if not HasCompletedQuest (Spawn, report) and not HasQuest (Spawn, report) then 
	    	if math.random(1, 100) <= 80 then
               PlayFlavor(NPC, "voiceover/english/pathfinder_oakheart/qey_elddar/100_pathed_woodelf_captain_callout1_fb0695da.mp3", "Excuse me!  We rangers could use some assistance.", "wave", 3199480334, 2514081832, Spawn)
            	FaceTarget(NPC, Spawn)
           end    
    end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
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


