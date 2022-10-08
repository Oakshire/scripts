--[[
	Script Name	: SpawnScripts/TheBaubbleshire/AlganTinmizer.lua
	Script Purpose	: Algan Tinmizer 
	Script Author	: Dorbin
	Script Date	: 2022.01.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

local BagoParts = 505
local TowerOfThree = 5441

function spawn(NPC)
    ProvidesQuest(NPC, TowerOfThree)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11) >0 then
if not HasQuest(Spawn, TowerOfThree) and not HasCompletedQuest(Spawn, TowerOfThree) and GetLevel(Spawn) >= 7 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/algan_tinmizer/qey_village06/100_ebik_wobblecog_callout_f7e366da.mp3","Hello adventurer! Come hither! You must help reveal the truth about wonders in the Forest Ruins.", "wave", 3574249828,2561130909, Spawn)
    else
    PlayFlavor(NPC, "","", "ponder", 0, 0, Spawn)
    end
end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11) <0 then  
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","", "shakefist", 0, 0, Spawn)
else    
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings!  Looking for a bashcogglinator or perhaps a metefozic thermogauge?")
	Dialog.AddVoiceover("voiceover/english/algan_tinmizer/qey_village06/ebikwobblecog000.mp3", 3320741899, 2828360998)
	if not HasQuest(Spawn, TowerOfThree) and not HasCompletedQuest(Spawn, TowerOfThree) and GetLevel(Spawn) >= 7 then
	Dialog.AddOption("No, no. Do you need something?", "TowerStart")
	end
   	if HasQuest(Spawn, BagoParts) and not HasCompletedQuest(Spawn, BagoParts) then
	Dialog.AddOption("I found this bag of cogs and sprockets and I believe it belongs to you.", "PartsComplete")
    end
	if GetQuestStep (Spawn, TowerOfThree) == 2 then
	Dialog.AddOption("I found the Tower of the Three in the Forest Ruins.  It has certainly seen better days.", "TowerFinish")
	end
	if GetRace(Spawn)==5 then
	Dialog.AddOption("Nothing I need. I will be going now.")
    end
    Dialog.AddOption("Wait, what? I don't want any part of this.")
	Dialog.Start()
    end	
end

function PartsComplete(NPC, Spawn)
	SetStepComplete(Spawn, BagoParts, 1)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh my, it does indeed!  I thought I'd lost those parts.  You've saved me a great deal of trouble, friend.  Let me compensate you for your keen eyes and good nature.")
	Dialog.AddVoiceover("voiceover/english/algan_tinmizer/qey_village06/ebikwobblecog004.mp3", 3506700669, 47329733)
    PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddOption("Thanks!")
	Dialog.Start()
	end

function TowerStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I see my superior intellect confuses you.  Don't worry, it perplexes many people - tis' the curse of the Tinmizer name.  However, I can use your help, for even simple minds contribute to the greatness of Qeynos.")
	Dialog.AddVoiceover("voiceover/english/algan_tinmizer/qey_village06/ebikwobblecog001.mp3", 1973122055, 1074636856)
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
    Dialog.AddOption("If you have the work I have the time.", "TowerMission")
	Dialog.AddOption("I can't help you.")
	Dialog.Start()
end

function TowerMission(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You must venture into the Forest Ruins. Tavern tales claim the remnants of the magi tower of the Order of Three exist there. You must reveal the truth of this mystery.")
	Dialog.AddVoiceover("voiceover/english/algan_tinmizer/qey_village06/ebikwobblecog002.mp3", 331751253, 2149638636)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("I will find the mage tower ruins.", "QuestStart")
	Dialog.AddOption("Dig through some ruins?  Sorry.  You'll need to find someone else to wade through that rubish.")
	Dialog.Start()
end

function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
     OfferQuest(NPC, Spawn, TowerOfThree)
end

function TowerFinish(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is wonderful news!  Someday, I must explore the ruins but not today.  I thank you for your service, adventurer.")
	Dialog.AddVoiceover("voiceover/english/algan_tinmizer/qey_village06/ebikwobblecog003.mp3", 1222490153, 3050983577)
    PlayFlavor(NPC,"","","thanks",0,0,Spawn)
	Dialog.AddOption("No problem at all.")
	Dialog.Start()
	SetStepComplete(Spawn, TowerOfThree, 2)
end

