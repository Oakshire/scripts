--[[
    Script Name    : SpawnScripts/Longshadow/OverseerDaerla.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.02 06:10:41
    Script Purpose : 
                   : 
--]]
local Welcome = 5862

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
elseif GetRace(Spawn)== 1 or GetRace(Spawn) == 19 or GetRace(Spawn) == 17 then
    if CanReceiveQuest(Spawn, Welcome)then   
    PlayFlavor(NPC,"voiceover/english/overseer_daerla/fprt_hood05/qst_overseer_daerla_callout2_8e8f4739.mp3","All of you lowly refugees are to speak with me at once!","sniff",2064397815,2852618419,Spawn)
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

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        PlayFlavor(NPC,"","","shame",0,0,Spawn)
    else        
if GetRace(Spawn)== 1 or GetRace(Spawn) == 19 or GetRace(Spawn) == 17 then
    if not HasQuest(Spawn, Welcome) and not HasCompletedQuest(Spawn,Welcome)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah ... Yes ... what have we here? A refugee? Now, how do I know you are a lowly refugee, hmm? Perhaps by your tattered, commoner clothing, or is it your rancid stench? No ... that's not it ... let's see ... Ahhh ... yes. I see now, the stupid look on your face gives away your lowly status.")
	Dialog.AddVoiceover("voiceover/english/overseer_daerla/fprt_hood05/overseer_daerla001.mp3", 2177122562, 2434125400)
    PlayFlavor(NPC,"","","sarcasm",0,0,Spawn)
	Dialog.AddOption("Who are you to speak to me that way?","Dialog1")
	Dialog.AddOption("I don't have time for this!")
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
        PlayFlavor(NPC,"voiceover/english/overseer_daerla/fprt_hood05/qst_overseer_daerla_callout1_1b99f97d.mp3","Begone, you filthy commoner!  I have important work to do.","stare",850117394,1406850605,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/overseer_daerla/fprt_hood05/qst_overseer_daerla_callout2_8e8f4739.mp3","All of you lowly refugees are to speak with me at once!","sniff",2064397815,2852618419,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll say this once: You are in Freeport, ruled by the Overlord. Our Lord charges me with the task of either processing refugees or flaying the flesh from their bodies with my sword. If you choose to speak up again, I shall choose the latter! ")
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/overseer_daerla/fprt_hood05/overseer_daerla002.mp3", 1998853027, 544729221)
	Dialog.AddOption("I see... ahem... what are my instructions, then?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Much better.  You are in Longshadow Alley, the district set aside for the greatest race, the Teir'Dal.  Our loving Overlord offers you a place to live, a house.  Show your appreciation for this gift by undertaking any task his servants demand of you. I am one of those servants. ")
	Dialog.AddVoiceover("voiceover/english/overseer_daerla/fprt_hood05/overseer_daerla003.mp3", 2404917247, 404866112)
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddOption("Very well.  Are there any demands at this moment, Overseer?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,Welcome)
end