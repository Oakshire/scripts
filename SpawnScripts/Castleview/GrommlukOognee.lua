--[[
	Script Name	: SpawnScripts/Castleview/GrommlukOognee.lua
	Script Purpose	: Grommluk Oognee 
	Script Author	: Dorbin
	Script Date	: 2022.01.26
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Bog = 5458

function spawn(NPC)
SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")
ProvidesQuest(NPC, Bog)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  	
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahhh... It feels good to get into the water and relax, but too bad this isn't a swamp, though. The water is too clean the stone doesn't squish...")
	Dialog.AddVoiceover("voiceover/english/grommluk_oognee/qey_village04/grommlukoognee.mp3", 1671306238, 1249436621)
	PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
	if not HasCompletedQuest (Spawn, Bog) and not HasQuest (Spawn, Bog) then 
    Dialog.AddOption("What seems to be the matter?", "Matter")
    end
    if GetQuestStep (Spawn, Bog)==2 then 
    Dialog.AddOption("I have your jar with swamp water and extra muck.", "Delivery")
    end
    Dialog.AddOption("Enjoy your soak. Good day.")	
    Dialog.Start()
    end
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  	    
    if MakeRandomInt(1, 100) <= 60 then
        if not HasCompletedQuest (Spawn, Bog) then 
            FaceTarget(NPC,Spawn)
            local choice = MakeRandomInt(1,2)
                if choice == 1 then
	           PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/100_swimmer_grommluk_multhail2_b5e61808.mp3", "I profess that I am not mad, but I do thinketh this water is too clean.  And the stones!  They doth not squish under thy feet!", "crazy", 2658355916, 3677777453)
                else 
            PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/100_swimmer_grommluk_callout_893d31d6.mp3", "Aaaaahhh ... This is not how a Froglok should live. Hello, friend. What does thou need?",  "pout", 1845678991, 1668939224, Spawn)
                end
            end
        else
            if HasCompletedQuest (Spawn, Bog) then 
            local choice = MakeRandomInt(1,2)
                if choice == 1 then
	            PlayFlavor(NPC, "voiceover/english/grommluk_oognee/qey_village04/100_swimmer_grommluk_multhail2_b5e61808.mp3", "I profess that I am not mad, but I do thinketh this water is too clean.  And the stones!  They doth not squish under thy feet!", "crazy", 2658355916, 3677777453)
                else 
                PlayFlavor(NPC, "", "", "dance", 0, 0)
            end
         end
    end
    end
end

function Matter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Nothing like being submerged in marsh water up to thy eyeballs, and feeling the ground squish between thy toes. I hear the Peat Bog is like that. Could'st thou go there and find out for me? I would graciously pay'st thou for the job.")
	Dialog.AddVoiceover("voiceover/english/grommluk_oognee/qey_village04/grommlukoognee000.mp3",2855844527, 67892333)
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
    Dialog.AddOption("I can explore the Peat Bog for you.", "QuestStart")
    Dialog.AddOption("I have no desire to wallow in the Peat Bog. Sorry.")
    Dialog.Start()
end



function QuestStart(NPC, Spawn, Quest)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Bog)
end

-- This line is accurate, but the MP3 does not work. We need the keys. (2022.02.18 Dorbin)
function Delivery(NPC, Spawn)
    SetStepComplete(Spawn,Bog , 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, this is a great sample.  It looks unto me like the Peat Bog is just what I'm looking for.  Grammarcy for your help.  Here is the money I told thee I would pay thou.")
	Dialog.AddVoiceover("voiceover/english/grommluk_oognee/qey_village04/grommlukoognee002.mp3",0, 0)
 	PlayFlavor(NPC, "", "", "happy", 0,0 , Spawn)
    Dialog.AddOption("Enjoy your bog swims.")
    Dialog.Start()
end

function QuestDone(NPC, Spawn)
end

