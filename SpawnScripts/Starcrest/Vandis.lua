--[[
	Script Name	: SpawnScripts/Starcrest/Vandis.lua
	Script Purpose	: Vandis 
	Script Author	: Dorbin
	Script Date	: 06.29.2022
	Script Notes	: 
--]]
local HailCheck = false

require "SpawnScripts/Generic/DialogModule"

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
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
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
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("Can't you see I'm in the middle of a game of King's Field?  And no, you can't help!")
	Dialog.AddVoiceover("voiceover/english/vandis/qey_village02/vandis.mp3", 555689921, 1189263301)
    if GetQuestStep (Spawn, 245)==1 then 
	Dialog.AddOption("Molly's cat found this.  Is it part of your King's Field game?","Done")
    end
	Dialog.AddOption("I'm not going to say anything.  I can see you are losing well enough on your own.  ")
	Dialog.Start()
end

function Done(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
    SetStepComplete(Spawn, 245, 1)
	Dialog.AddDialog("What is this?  A missing piece? And from my color?!  Hey!  I've been playing without this piece!  No wonder I've been doing so badly!")
	Dialog.AddVoiceover("voiceover/english/vandis/qey_village02/vandis000.mp3", 1565383947, 2869392251)
	Dialog.AddOption("Well, I hope it helps!")
	Dialog.AddOption("There may be more than just that piece enflucing your game.")
	Dialog.Start()
end


function EmoteLoop(NPC)
    if HailCheck == true then
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,6)

    if emoteChoice == 1 then
-- confused
        PlayAnimation(NPC, 11214)
        AddTimer(NPC, MakeRandomInt(11000,12000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- doh
        PlayAnimation(NPC, 11410)
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
-- no
        PlayAnimation(NPC, 11881)
        AddTimer(NPC, MakeRandomInt(5000,6000), "EmoteLoop")	
     elseif emoteChoice == 6 then
-- whome
        PlayAnimation(NPC, 13295)
        AddTimer(NPC, MakeRandomInt(7000,8000), "EmoteLoop")	
  
     end
end
end