--[[
    Script Name    : SpawnScripts/Stonestair/OverseerMelkia.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 06:10:18
    Script Purpose : 
                   : 
--]]

local Welcome = 5859

require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,Welcome)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,12)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
    else
if GetRace(Spawn)== 3 or GetRace(Spawn) == 11  then
    if CanReceiveQuest(Spawn, Welcome) or HasQuest(Spawn,5758) then   
        PlayFlavor(NPC,"voiceover/english/overseer_melkia/fprt_hood02/qst_overseer_melkia_callout2_e5f9b75f.mp3","New refugees are required to speak with me immediately!","nod",566743467,1453719370,Spawn)
    elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
end
end


function ResetCallout(NPC,Spawn)
    CalloutTimer = false
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        PlayFlavor(NPC,"","","shame",0,0,Spawn)
    else        
if GetRace(Spawn)== 3 or GetRace(Spawn) == 11  then
    if not HasQuest(Spawn, Welcome) and not HasCompletedQuest(Spawn,Welcome)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You are wise to listen to your superiors.  You are in the great city of Freeport, and you will do as your superiors say.  Do you understand, or should I speak more slowly?")
	Dialog.AddVoiceover("voiceover/english/overseer_melkia/fprt_hood02/overseer_melkia001.mp3", 2219821898, 2979719473)
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
	Dialog.AddOption("What do you need of me?","Dialog1")
	Dialog.AddOption("I... will return shortly.")
	Dialog.Start()
    else
    Talk(NPC,Spawn)
    end
else    
    Talk(NPC,Spawn)
    end
end
end

function Talk(NPC,Spawn)
        FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/overseer_melkia/fprt_hood02/qst_overseer_melkia_callout1_8dc5a24e.mp3","You disgusting little creature!  How dare you address me?","lookaway",256372118,1746198863,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/overseer_melkia/fprt_hood02/qst_overseer_melkia_callout2_e5f9b75f.mp3","New refugees are required to speak with me immediately!","nod",566743467,1453719370,Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Awww ... how cute, it asked me a question.  Good little refugee.  What I need, is for you to answer my questions, not ask them.  Perhaps your pitiful intellect prevents you from comprehending these simple instructions. Maybe you'd like to meet with the Overlord's administrators of justice.  Is this what you want, lowly refugee?")
    PlayFlavor(NPC,"","","ponder",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/overseer_melkia/fprt_hood02/overseer_melkia002.mp3", 2859416423, 1015957689)
	Dialog.AddOption("...", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahhh ... Now it's clear.  You damaged your brain before arriving here.  I'll speak down to your level, so try to follow along.  You are in Stonestair Byway, the district populated by Erudites and Kerran.  The Overlord gave you a house.  Can you say, \"house?\" Now, try it with me ... hooousssee...")
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/overseer_melkia/fprt_hood02/overseer_melkia003.mp3", 1377639509, 4180092382)
	Dialog.AddOption("...House...?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Welcome)
end
