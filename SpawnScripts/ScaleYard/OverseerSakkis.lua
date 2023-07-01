--[[
    Script Name    : SpawnScripts/ScaleYard/OverseerSakkis.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.03 07:10:45
    Script Purpose : No VOs, so most is fabricated where mentioned
                   : 
--]]

local Welcome = 5863

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
if GetRace(Spawn)== 10 or GetRace(Spawn) == 0  then
    if CanReceiveQuest(Spawn, Welcome)then   
        PlayFlavor(NPC,"","Refugees will report to me at once!","wave",850117394,1406850605,Spawn)
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
if GetRace(Spawn)== 10 or GetRace(Spawn) == 0  then
    if not HasQuest(Spawn, Welcome) and not HasCompletedQuest(Spawn,Welcome)then --FABRICATED
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You there! Sweat... salt... goblin... You have the ssscent of a refugee. The Overlord demands loyalty from all new blood from the isle. You must prove yourself worthy of his power.")
--	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg001.mp3", 2748948544, 618605369)
    PlayFlavor(NPC,"voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3","","sniff",0,0,Spawn)
	Dialog.AddOption("I'm always up for a challenge.","Dialog1")
	Dialog.AddOption("I'll be right back.")
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
        PlayFlavor(NPC,"","Refugees will report to me at once!","sniff",850117394,1406850605,Spawn)
        else
        PlayFlavor(NPC,"","Disturb me again and you will suffer the consequences.","glare",850117394,1406850605,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn) --FABRICATED
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You survived thusss far, so you at least have a head on your shoulders. This is the City of Freeport. Stay in the Overlord's generous gaze and you'll keep your head where it belongs.")
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
--	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg002.mp3", 3261798868, 2615741361)
	Dialog.AddOption("What do you need from me?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I need nothing from you. You are the one who needs me. The Overlord decreed I give you a house in Scale Yard, home of both Iksar and barbarians. Each time you wake, say a prayer thanking the Overlord for his divine wisdom.")
--	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg003.mp3", 2428117614, 1340985853)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("A house? I'd take anything after that boat ride.", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Welcome)
end
