--[[
    Script Name    : SpawnScripts/BeggarsCourt/OverseerZerrin.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 07:10:39
    Script Purpose : -FABRICATED HAIL. MISSING VOs/Logs. Most likely out of order.
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
if GetRace(Spawn)== 12 or GetRace(Spawn) == 14  then
    if CanReceiveQuest(Spawn, Welcome)then   
        PlayFlavor(NPC,"","Refugees will report to me at once!","nod",850117394,1406850605,Spawn)
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
        PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    else        
if GetRace(Spawn)== 9 or GetRace(Spawn) == 6  then --FABRICATED HAIL. MISSING VOs/Logs. Most likely out of order.
    if not HasQuest(Spawn, Welcome) and not HasCompletedQuest(Spawn,Welcome)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You've got the look of a drowned rat! I have nothing for you needy types. Be on your way before I summon the Malitia.")
--	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg001.mp3", 2748948544, 618605369)
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("I'm suppose to meet an Overseer here. Is that you?","Dialog1")
	Dialog.AddOption("But... I'll be back.")
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
        PlayFlavor(NPC,"","Refugees will report to me at once!","sniff",850117394,1406850605,Spawn) --FABRICATED
        else
        PlayFlavor(NPC,"voiceover/english/overseer_zerrin/fprt_hood04/qst_overseer_zerrin_callout1_5fcc363d.mp3","Ever wonder how long you can breathe water?  Keep talking to me and you'll find out.","glare",1789839755,3380246682,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Let's cut to the chase, shall we?  I don't know you.  I don't want to know you, and come to think of it, I'd rather chew on glass than even talk to you.  Unfortunately, my position requires me to help you. So, refugee, welcome to Freeport, City of the Free.")
    PlayFlavor(NPC,"","","sniff",0,0,Spawn)
	--Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg002.mp3", 3261798868, 2615741361)
	Dialog.AddOption("I don't quite like your tone.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn) --
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No one ever does.  Now shut up and listen to what I say; The Overlord, all praise him, has ordered that all new refugees receive a house.  In exchange, you are indebted to him.  Pray that he never asks you to pay him back, understand?")
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/overseer_travogg/fprt_hood1/overseer_travogg003.mp3", 2428117614, 1340985853)
	Dialog.AddOption("A 'free' house? I'll take my chances.", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Welcome)
end
