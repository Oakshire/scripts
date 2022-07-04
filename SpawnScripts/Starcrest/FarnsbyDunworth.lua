--[[
	Script Name	: SpawnScripts/Starcrest/FarnsbyDunworth.lua
	Script Purpose	: Farnsby Dunworth 
	Script Author	: Dorbin
	Script Date	: 03.07.2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
local HailCheck = false

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")
ProvidesQuest(NPC,243)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
    SetTarget(NPC,Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
else
HailCheck = true
Dialog1(NPC, Spawn)    
AddTimer(NPC,32000,"HailReset")
end
end

function HailReset(NPC)
    HailCheck = false
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "whome", 0, 0, Spawn)
	Dialog.AddDialog("Hey, I don't know what they are talking about.  I've never seen such a scroll in my life!")
	Dialog.AddVoiceover("voiceover/english/farnsby_dunworth/qey_village02/farnsbydunworth000.mp3", 3102016344, 1493102371)
    if not HasQuest(Spawn,243) and not HasCompletedQuest(Spawn,243)then
	Dialog.AddOption("You seem to be in a predicament.  Need any help?","Dialog2")
    end
    if HasCompletedQuest(Spawn,243)then
	Dialog.AddOption("Still at it Farmsbey?  Might want to give them what they want.")
    end
    if GetQuestStep(Spawn,243)==2 then
	Dialog.AddOption("I've returned with your axe from the blacksmith.","Delivered")
    end
    Dialog.AddOption("Good luck with your 'situation'.")
	Dialog.Start()
end



function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("I think I'm alright for now, but their questions are holding me up from fetching the axe I ordered from the blacksmith!  Do you think you could lend a hand with that?")
	Dialog.AddVoiceover("voiceover/english/farnsby_dunworth/qey_village02/farnsbydunworth001.mp3", 1750948791, 3710883343)
	Dialog.AddOption("You do seem to have your hands full.  I'll go talk with the blacksmith for you.", "QuestBegin")
	Dialog.AddOption("You obviously have MANY 'situations' going on.  Too many for me to keep track.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 243)
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 243, 2)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddDialog("Glad to hear it!  Ah, this is a fine axe indeed!  I'll have to compliment Barrik on his work the next time we meet.  Here's a bit of my leftover coin.  I think I could use it!")
	Dialog.AddVoiceover("voiceover/english/farnsby_dunworth/qey_village02/farnsbydunworth003.mp3", 2174088853, 1124987532)
	Dialog.AddOption("I think I could use it too.  Good luck with these two erudites!")
	Dialog.Start()
end

function EmoteLoop(NPC)
    if HailCheck == true then
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,6)

    if emoteChoice == 1 then
-- whome
        PlayAnimation(NPC, 13295)
        AddTimer(NPC, MakeRandomInt(11000,12000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- shrug
        PlayAnimation(NPC, 12240)
        AddTimer(NPC, MakeRandomInt(6000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- heckno
        PlayAnimation(NPC, 11680)
        AddTimer(NPC, MakeRandomInt(12000,14000), "EmoteLoop")	
    
    elseif emoteChoice == 4 then
-- cringe
        PlayAnimation(NPC, 11256)
        AddTimer(NPC, MakeRandomInt(8000,9000), "EmoteLoop")	

    elseif emoteChoice == 5 then
-- beg
        PlayAnimation(NPC, 10844)
        AddTimer(NPC, MakeRandomInt(12000,13500), "EmoteLoop")	
    elseif emoteChoice == 6 then
-- no
        PlayAnimation(NPC, 11881)
        AddTimer(NPC, MakeRandomInt(5000,6000), "EmoteLoop")	
       end
end
end