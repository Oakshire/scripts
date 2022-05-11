--[[
	Script Name	: SpawnScripts/ElddarGrove/Bryson.lua
	Script Purpose	: Bryson 
	Script Author	: Dorbin
	Script Date	:   2022.05.10
	Script Notes	: 
--]]
local bow = 5529

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
ProvidesQuest(NPC,bow)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/bryson/qey_elddar/bryson000.mp3", "", "smile", 4245794295, 2132791920, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn,bow) and not HasCompletedQuest(Spawn, bow) then
	AddConversationOption(conversation, "I'm looking for work.  Need anything?", "Option1")
	end
    if GetQuestStep(Spawn,bow)==2 then
	AddConversationOption(conversation, "Here is your bow from carpenter Paddock", "Delivered")
	end	
	AddConversationOption(conversation, "Afraid I missed it.  I'll have to see it next time.")
	StartConversation(conversation, NPC, Spawn, "You see, a bullseye!  I knew I'd hit it soon.")
    end
    end


function InRange(NPC,Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else    
    if not HasCompletedQuest (Spawn, bow) and not HasQuest (Spawn, bow) then 
	    if math.random(1, 100) <= 80 then
	    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/bryson/qey_elddar/100_archer_human_bryson_multhail1_591026b2.mp3", "Now, if you hope to be as fine an archer as me, you should be off practicing instead of talking to me!", "smirk", 2519962645, 3532721498, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/bryson/qey_elddar/100_archer_human_bryson_callout1_c9e17e55.mp3", "Ha! A bullseye! I knew I would hit it soon. Take a look at this, friend!", "smile", 4180624223, 2622592, Spawn)
        end    
        end
    end
    end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/bryson/qey_elddar/bryson001.mp3", "", "agree", 1715589937, 1740141288, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Say no more.  I'll go fetch your bow from Paddock.", "StartQuest")
	AddConversationOption(conversation, "I meant real work, not a delivery person. Nevermind!")
	StartConversation(conversation, NPC, Spawn, "Straight to the point.  I like that in a person!  You're in luck!  I need a bow retrieved that's on order from Carpenter Paddock.  With all my archery practice I've been too busy to pick it up.")
end	

function StartQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,bow)
    end
    
  function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/bryson/qey_elddar/bryson002.mp3", "", "thanks", 4157132890, 1410204263, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "It was no problem.", "FinishQuest")
	AddConversationOption(conversation, "Good luck with the new bow!", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Fantastic!  I know the bow will improve my aim!  And, of course, I'll pay you a bit of a coin for your fair deed.")
end  

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,bow, 2)
    end   