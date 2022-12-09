--[[
	Script Name	: SpawnScripts/SouthQeynos/FredrickLosce.lua
	Script Purpose	: Fredrick Losce 
	Script Author	: Dorbin
	Script Date	: 2022.05.16
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

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

        if HasQuest (Spawn, Dryads) and GetQuestStep(Spawn,Dryads)==2 then
            SetStepComplete(Spawn,Dryads, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","scheme", 0, 0, Spawn)
    Dialog.AddDialog( "I can tell by your face the deed is done.  Thank you for ridding the forest of those corrupted beasts!  Please, take this as a token for doing the world- and particularlly me- a favor. Now off with you.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 390832885, 49061382)
	Dialog.AddOption("Your reward is thank you enough. I am glad I could help!")
	Dialog.Start()

        elseif not HasCompletedQuest (Spawn, Dryads) then 
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","nod", 0, 0, Spawn)
    Dialog.AddDialog( "Hail citizen.  You seem to be looking for something to do?  Might I tempt you with doing myself and the rest of the world a favor?")
	Dialog.AddVoiceover("voiceover/english/fredrick_losce/qey_south/fredricklosce000.mp3", 1020132754, 3906146647)
    if not HasQuest(Spawn,Dryads) and not HasCompletedQuest(Spawn, Dryads) then
    Dialog.AddOption("Perhaps.  What would I be doing?", "Delivery2")
    end
    Dialog.AddOption("Not really interested. Enjoy your drink.")
	Dialog.Start()
        else
        FaceTarget(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/fredrick_losce/qey_south/100_qst_fredrick_losce_multhail1_39997e53.mp3", "I'm sorry friend. I thought you were someone else.", "", 2011619923, 2423962881, Spawn)
    end
end
end



function Delivery2(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks",0 , 0, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Dryads)
    end