--[[
	Script Name	: SpawnScripts/SouthQeynos/FredrickLosce.lua
	Script Purpose	: Fredrick Losce 
	Script Author	: Dorbin
	Script Date	: 2022.05.16
	Script Notes	: 
--]]
local Dryads = 5557

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
    ProvidesQuest(NPC,Dryads)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else     
        if not HasCompletedQuest (Spawn, Dryads) and not HasQuest (Spawn, Dryads) then 
 	        if math.random(1, 100) <= 80 then
          choice = math.random(1,2)
      	    FaceTarget(NPC, Spawn)
	        if choice == 1 then
	        PlayFlavor(NPC, "voiceover/english/fredrick_losce/qey_south/100_qst_fredrick_losce_multhail1_39997e53.mp3", "I'm sorry friend. I thought you were someone else.", "", 2011619923, 2423962881, Spawn)
	        elseif choice == 2 then
	        PlayFlavor(NPC, "voiceover/english/fredrick_losce/qey_south/100_qst_fredrick_losce_callout1_a3881416.mp3", "Darn those pesky dryads.  What I'd give to rid the forest of those nasty beasts!  You there!  Can you help me?", "frustrated", 75957079, 4242676520, Spawn)
            end
            end
        end
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else		

        if GetQuestStep(Spawn,Dryads)==2 then
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "I can tell by your face the deed is done.  Thank you for ridding the forest of those corrupted beasts!  Please, take this as a token for doing the world- and particularlly me- a favor. Now off with you.", "nod", 0, 0, Spawn)
            FaceTarget(NPC, Spawn)
            SetStepComplete(Spawn,Dryads, 2)
        elseif not HasCompletedQuest (Spawn, Dryads) then 
            PlayFlavor(NPC, "voiceover/english/fredrick_losce/qey_south/fredricklosce000.mp3", "", "", 1020132754, 3906146647, Spawn)
	        local conversation = CreateConversation()
    	    if not HasQuest(Spawn,Delivery) and not HasCompletedQuest(Spawn, Delivery) then
        	AddConversationOption(conversation, "Perhaps.  What would I be doing?", "Delivery1")
            end
        	AddConversationOption(conversation, "Not really interested. Enjoy your drink.")
    	    StartConversation(conversation, NPC, Spawn, "Hail citizen.  You seem to be looking for something to do?  Might I tempt you with doing myself and the rest of the world a favor?")

        else
        FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/fredrick_losce/qey_south/100_qst_fredrick_losce_multhail1_39997e53.mp3", "I'm sorry friend. I thought you were someone else.", "", 2011619923, 2423962881, Spawn)
    end
end
end

function Delivery1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/fredrick_losce/qey_south/fredricklosce001.mp3", "", "sniff", 2839949411, 2971198506, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Gladly.  I'll take care of these dryads.", "Delivery2")
	AddConversationOption(conversation, "I'd rather not.  Find someone else to clean up the forest for your 'walks'.")
	StartConversation(conversation, NPC, Spawn, "I love walking through the Oakmyst Forest, but in recent times corrupt dryads have taken over the area.  These cretins love to ruins my walks.  If you could rid the world of these horrid creatures it would be a noble task, indeed!")
end	

function Delivery2(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks",0 , 0, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Dryads)
    end