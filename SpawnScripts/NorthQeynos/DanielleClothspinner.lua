--[[
	Script Name		: SpawnScripts/NorthQeynos/DanielleClothspinner.lua
	Script Purpose	: Danielle Clothspinner
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data + Quest dialogue.  Dye quest is improvised.  Her VOs do not work.
--]]

require "SpawnScripts/Generic/DialogModule"

local pelts = 5539
local dyes = 5538

function spawn(NPC)
ProvidesQuest(NPC,pelts)
ProvidesQuest(NPC,dyes)
AddTimer(NPC, 5000, "EmoteLoop")    
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
   	PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
else 
    if not HasCompletedQuest(Spawn,pelts) or not HasCompletedQuest(Spawn,dyes)then
    Dialog1(NPC, Spawn)
    RandomGreeting(NPC, Spawn)
    else
    RandomGreeting(NPC, Spawn)
    PlayFlavor(NPC,"","Gah!  Stuck my finger again... Oh, its you!  Thank you again for all your help.  I've got so many orders right now, but please use our shop as you wish.","doh",0,0,Spawn)
    end
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","grumble",0,0,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whatever shall I do?  I'm out of dyes, and I simply must finish these yards of cloth today!  I'll certainly never make it all the way across town to get more and still have time to finish with my sewing!")
--	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner.mp3", 2670222455, 1687224055)
    if not HasQuest(Spawn,dyes) and not HasCompletedQuest(Spawn,dyes)then
 	Dialog.AddOption("Surely someone in the city must have dyes?", "DialogA")
    end
    if not HasQuest(Spawn,pelts) and not HasCompletedQuest(Spawn,pelts)then
	Dialog.AddOption("I'm very sorry to hear this.  I don't know much about dyes, but is there anything else you may need assistance with?", "Dialog3")
    end
    if GetQuestStep(Spawn,pelts)==2 then
	Dialog.AddOption("I have all the preserved bear hides that you requested.", "Dialog2")
    end
    if GetQuestStep(Spawn,dyes)==2 then
	Dialog.AddOption("Here are your two tubs of dye from Khali’Mun.", "DialogC")
    end
	Dialog.AddOption("Boy, guess you're out of luck.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","thank",0,0,Spawn)
	Dialog.AddDialog("Perfect, once I am done with all the sewing and dying for this job I can get started on some top notch pelt work.")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner004.mp3", 237301026, 160623065)
	Dialog.AddOption("Glad I could be of assistance!","PeltsDone")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddDialog("Well, I am always having a problem getting bear pelts of a quality that I can work with and truly make shine.  If you could bring me four preserved bear hides, I can reward you for your efforts.")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner003.mp3", 3729469841, 921407790)
	Dialog.AddOption("I would be happy to gather those for you.", "Dialog4")
	Dialog.Start()
end


function Dialog4(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,pelts)
    end

function DialogA(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, there is.  I just haven't had the time to make it to the Herb Shop in the southern part of the city to pick up my regular supply.  Khali’Mun most certainly has my tubs of dye ready.  If you happen to have some time, could you see if he has them?  I would give you the coin to pay for them, of course.")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner003.mp3", 3729469841, 921407790)
	Dialog.AddOption("Certainly.  I'll head that way and bring back your order if he has them.", "DialogB")
	Dialog.AddOption("Actually, I don't think I have time either.","Sigh")
	Dialog.Start()
end

function Sigh(NPC, Spawn)
	PlayFlavor(NPC,"","","sigh",0,0,Spawn)
end

function DialogB(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,dyes)
    end
 
function PeltsDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,pelts, 2)
    end    
 
function DialogC(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC,"","","thanks",0,0,Spawn)
	Dialog.AddDialog("Excellent.  Now I can get this fabric looking like it should.  You have done me a great service.  Please, take this little something I put together with my extra fabric.")
	Dialog.AddVoiceover("voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner002.mp3", 237301026, 160623065)
	Dialog.AddOption("Thanks.  Glad I could help.","DyeDone")
	Dialog.Start()
end 

function DyeDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,dyes, 2)
    end    
 
 function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1039.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1021.mp3", 0, 0, Spawn)
	end
end


function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end