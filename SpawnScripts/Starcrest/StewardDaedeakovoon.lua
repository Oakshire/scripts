--[[
    Script Name    : SpawnScripts/Starcrest/StewardDaedeakovoon.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.02 08:11:01
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,5762)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
elseif GetRace(Spawn)== 9 or GetRace(Spawn)== 3 or GetRace(Spawn)== 20 then
    if not HasQuest(Spawn,5762) and not HasCompletedQuest(Spawn, 5762) and HasQuest(Spawn, 5763) and not HasCompletedQuest(Spawn, 5763) then   
    Talk(NPC,Spawn)
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



function ResetCallout(NPC,Spawn)
    CalloutTimer = false
end

--(1115601018)[Sun May 08 21:10:18 2005] \aNPC 11530 Steward Daedeakovoon:Steward Daedeakovoon\/a says,"I cannot help you now, but you have potential. Use it wisely."

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    else        
if GetRace(Spawn)== 9 or GetRace(Spawn)== 3 or GetRace(Spawn)== 20 then
    if not HasQuest(Spawn,5762) and not HasCompletedQuest(Spawn, 5762) and not HasQuest(Spawn, 5763) and not HasCompletedQuest(Spawn, 5763)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("On behalf of Qeynos, we open our arms to you, friend.  Your journey is over, and now you dwell among friends.")
	Dialog.AddVoiceover("voiceover/english/steward_daedeakovoon/qey_village02/steward_daedeakovoon001.mp3", 2946421503, 2803311810)
    PlayFlavor(NPC,"","","salute",0,0,Spawn)
	Dialog.AddOption("Thank you for the warm welcome.", "Dialog1")
	Dialog.AddOption("I'll have to continue this conversation a bit later.")
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
        PlayFlavor(NPC,"voiceover/english/steward_daedeakovoon/qey_village02/qst_steward_daedeakovoon_callout1_cfd05996.mp3","You have much potential.  Be wise and use it to its fullest.","agree",1059310994,1083041509,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_daedeakovoon/qey_village02/qst_steward_daedeakovoon_multhail2_78a42729.mp3","On behalf of Qeynos, I welcome you, friend.  Your journey is over, and now you are among friends.","hello",1550457164,405052003,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No, child, it is I who should thank you. Gazing into your eyes, I see you've overcome many hardships. Your strength inspires us all. Though your journey is complete, you'll find it is only the beginning of another. Let me help you with the first step of your new adventure.")
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/steward_daedeakovoon/qey_village02/steward_daedeakovoon002.mp3", 1867915275, 19667391)
	Dialog.AddOption("I appreciate the assistance.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I bear a message from our Queen. Though young in years, she possesses ancient wisdom and a kind heart. She has set aside a house for each homeless refugee in our commune, Starcrest. This includes you, child.")
	Dialog.AddVoiceover("voiceover/english/steward_daedeakovoon/qey_village02/steward_daedeakovoon003.mp3", 3420117817, 2473207721)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddOption("A home here in Starcrest? What can you tell me about it?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5762)
end