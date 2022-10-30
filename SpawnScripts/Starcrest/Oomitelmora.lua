--[[
	Script Name	: SpawnScripts/Starcrest/Oomitelmora.lua
	Script Purpose	: Oomitelmora 
	Script Author	: Dorbin
	Script Date	: 06.30.2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
local HailCheck = false

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    SetTarget(NPC,Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
HailCheck = true
Dialog1(NPC, Spawn)    
AddTimer(NPC,26000,"HailReset")
end
end

function HailReset(NPC)
    HailCheck = false
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("'Tis not just the victory I enjoy. To see this one writhe in frustration is highly amusing.")
	Dialog.AddVoiceover("voiceover/english/optional4/oomitelmora/oomitelmora-mp3_64.mp3", 354169301, 3490300460)
    if GetQuestStep(Spawn,247)==1 then
	Dialog.AddOption("King's field discussions do not concern me.  I've a message for you from Orrinalanya.","Turnin")
    else   
	Dialog.AddOption("King's field discussions do not concern me.")
    end
	Dialog.Start()
end

function Turnin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I would assume she wishes to debate religion.  I will make my way over to her soon enough.  Here, let me at least tip you with some of the money I've taken from poor Vandis.")
 	Dialog.AddOption("Thanks for the tip.")
 	SetStepComplete(Spawn, 247,1)
	Dialog.Start()
end

--I would assume she wishes to debate religion.  I will make my way over to her soon enough.  Here, let me at least tip you with some of the money I've taken from poor Vandis. ( Unknown order Pulled Dialog)

function EmoteLoop(NPC)
    if HailCheck == true then
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,6)

    if emoteChoice == 1 then
-- chuckle
        PlayAnimation(NPC, 11152)
        AddTimer(NPC, MakeRandomInt(11000,12000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- point
        PlayAnimation(NPC, 12028)
        AddTimer(NPC, MakeRandomInt(6000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(12000,14000), "EmoteLoop")	
    
    elseif emoteChoice == 4 then
-- agree
        PlayAnimation(NPC, 10745)
        AddTimer(NPC, MakeRandomInt(5000,6000), "EmoteLoop")	

    elseif emoteChoice == 5 then
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(12000,13500), "EmoteLoop")	
    elseif emoteChoice == 6 then
-- no
        PlayAnimation(NPC, 11881)
        AddTimer(NPC, MakeRandomInt(5000,6000), "EmoteLoop")	
       end
end
end