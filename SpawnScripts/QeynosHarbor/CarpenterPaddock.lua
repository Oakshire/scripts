--[[
	Script Name	: SpawnScripts/QeynosHarbor/CarpenterPaddock.lua
	Script Purpose	: Carpenter Paddock 
	Script Author	: Dorbin
	Script Date	: 2022.05.10
	Script Notes	: 
--]]
local bow = 5529
local beetles = 5532

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")   
    ProvidesQuest(NPC, beetles)
    waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end



function InRange(NPC,Spawn)
if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
    if not HasCompletedQuest (Spawn, beetles) then 
	if math.random(1, 100) <= 80 then
	local choice = math.random(1,3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/100_qst_carpenter_paddock_callout1_67878a5c.mp3", "We're running low on wood, but I don't want to mention it to Overseer Scarbourough until he calms down.", "", 2460409827, 3332556210, Spawn)
	elseif choice == 2 then
    FaceTarget(NPC,Spawn)
	PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/100_qst_carpenter_paddock_multhail1_f2e09d24.mp3", "I'm very busy! Sorry, I've no time to talk!", "", 2269345214, 1588506015, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/100_qst_carpenter_paddock_multhail2_e3288657.mp3", "I'm very busy! I must get more wood! ", "", 2812949705, 1915264340, Spawn)
    end    
else
 	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
    FaceTarget(NPC,Spawn)
    end
    end
    end
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn, 11) <0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/carpenterpaddock000.mp3", "", "frustrated", 118691548, 2274967025, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn,beetles) and not HasCompletedQuest(Spawn, beetles) then
	AddConversationOption(conversation, "Do you need help getting more wood?", "Option1")
	end
    if GetQuestStep(Spawn,bow)==1 then
	AddConversationOption(conversation, "I'm here to pickup a bow Bryson ordered.", "Bryson")
	end	
    if GetQuestStep(Spawn,beetles)==2 then
	AddConversationOption(conversation, "I've dealt with the fire beetles.  Here are their carcases as proof.", "Beetledone")
	end	
	AddConversationOption(conversation, "Good luck on replenishing your supply.")
	StartConversation(conversation, NPC, Spawn, "We're running out of wood, but I don't want to mention it to Overseer Scarborough until he calm's down.")
    end
    end


  function Bryson(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/carpenterpaddock001.mp3", "", "agree", 367423194, 2653047684, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I will. Thanks.", "FinishQuest1")
	StartConversation(conversation, NPC, Spawn, "Ah yes.  I remember now.  Bryson wanted me to carve him a super durable recurve bow.  Give me a moment.  Here it is!  This fine bow shall serve him well.  Make sure Bryson gets this in a timely manner.")
end  


function FinishQuest1(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,bow, 1)
    end  
    
    

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/carpenterpaddock002.mp3", "", "agree", 737863515, 3333157818, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Gladly.  I'll return with their carcases.", "StartQuest")
	AddConversationOption(conversation, "Bugs?  Ew.  No thanks.")
	StartConversation(conversation, NPC, Spawn, "Thank you for your offer, but we have plenty of help here!  Though we could use help in Antonica where the fire beetles feast on our lumber.  I'll pay you for the carcases of the vermin!")
end	

function StartQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,beetles)
    end
    
  function Beetledone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/carpenter_paddock/qey_harbor/carpenterpaddock003.mp3", "", "thanks", 988291901, 694482922, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Glad I could help.  Thanks.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Huh, you've done a fine job!  This will keep our lumber in fine shape.  Your services are invaluable!  You certainly earned this reward.")
end  

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,beetles, 2)
    end       

function Emotes(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
    end
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 937.68, -25.27, 98.76, 2, 0)
	MovementLoopAddLocation(NPC, 937.68, -25.27, 98.76, 2, 14,"Emotes")
	MovementLoopAddLocation(NPC, 940.06, -25.27, 103.64, 2, 1)
	MovementLoopAddLocation(NPC, 940.06, -25.27, 103.64, 2, 14,"Emotes")
	MovementLoopAddLocation(NPC, 947.46, -25.27, 103.79, 2, 1)
	MovementLoopAddLocation(NPC, 947.46, -25.27, 103.79, 2, 14,"Emotes")
	MovementLoopAddLocation(NPC, 953.35, -25.27, 102.16, 2, 0)
	MovementLoopAddLocation(NPC, 961.61, -25.27, 106.84, 2, 1)
	MovementLoopAddLocation(NPC, 961.61, -25.27, 106.84, 2, 14,"Emotes")
	MovementLoopAddLocation(NPC, 957.28, -25.27, 107.64, 2, 1)
	MovementLoopAddLocation(NPC, 957.28, -25.27, 107.64, 2, 14,"Emotes")
	MovementLoopAddLocation(NPC, 958.11, -25.27, 103.57, 2, 0)
	MovementLoopAddLocation(NPC, 947.08, -25.27, 99.1, 2, 1)
	MovementLoopAddLocation(NPC, 947.08, -25.27, 99.1, 2, 14,"Emotes")
	MovementLoopAddLocation(NPC, 940.16, -25.27, 97.93, 2, 0)
	MovementLoopAddLocation(NPC, 933.77, -25.27, 106.09, 2, 1)
	MovementLoopAddLocation(NPC, 933.77, -25.27, 106.09, 2, 14,"Emotes")
end


