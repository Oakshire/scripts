--[[
	Script Name	: SpawnScripts/Starcrest/TagganBrookrich.lua
	Script Purpose	: Taggan Brookrich 
	Script Author	: Dorbin
	Script Date	:07.02.2022
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 9, "InRange", "LeaveRange")		
    ProvidesQuest(NPC,5602)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
else
    if not HasQuest(Spawn, 5602) and not HasCompletedQuest(Spawn,5602)then
	local chance = math.random(0, 100)
	if chance <= 80 then
	local choice = MakeRandomInt(1,3)
	FaceTarget(NPC, Spawn)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/taggan_brookrich/qey_village02/100_human_spectator_multhail1_8a7fa75d.mp3", "Sorry, friend. I don't think you can help with my cunning scheme.", "no", 3665262967, 2636803513, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/taggan_brookrich/qey_village02/100_human_spectator_callout_85964bfe.mp3", "Can you believe Vandis? You'd think he'd want help considering the mess he's in. But, ooohhh no... He's too stubborn to listen to any advice. When will he learn that he can't win without help?", "confused", 3426132034, 1351118898, Spawn, 0)
	elseif choice == 3 then --Repeated for focus
	PlayFlavor(NPC, "voiceover/english/taggan_brookrich/qey_village02/100_human_spectator_callout_85964bfe.mp3", "Can you believe Vandis? You'd think he'd want help considering the mess he's in. But, ooohhh no... He's too stubborn to listen to any advice. When will he learn that he can't win without help?", "confused", 3426132034, 1351118898, Spawn, 0)
	end

    end
end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddDialog("Hello there!  Hey, you'd think Vandis would want help considering the mess he's in. But, ooohhh no... He's too stubborn to listen to any advice.")
	Dialog.AddVoiceover("voiceover/english/taggan_brookrich/qey_village02/tagganbrookrich.mp3", 3755219167, 2355974799)
 	if not HasCompletedQuest (Spawn, 5601) and not HasQuest (Spawn, 5602) then 
	Dialog.AddOption("From that King's field game over there? What sort of advice are you talking about?","Dialog2")
    end
    if GetQuestStep (Spawn, 5602)==2 then 
	Dialog.AddOption("Here are the rats you asked for.  Unfortunately they are dead and some smell foul!","Delivered")
    end
    Dialog.AddOption("I'll leave you to figuring out that 'advice'.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("I told him he should try and get his game thrown out, but he's losing too bady to recover now.  If I could find a distraction I could get the game called off...")
	Dialog.AddVoiceover("voiceover/english/taggan_brookrich/qey_village02/tagganbrookrich000.mp3", 1520241619, 3438346932)
	Dialog.AddOption("Why not rats?  The foul things scurry about and would be distracting enough.", "QuestBegin")
	Dialog.AddOption("I'm leaving this scheme up to you.  I'm needed elsewhere.")
	Dialog.Start()
end

function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 5602)
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 5602, 2)
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddDialog("Oh don't mind that.  Some of the city's less fortunate people eat sewer rats from time to time.  Never you mind, these rats are perfect!")
	Dialog.AddVoiceover("voiceover/english/taggan_brookrich/qey_village02/tagganbrookrich002.mp3", 1496475770, 1677679367)
	Dialog.AddOption("Good luck on that 'distraction' of yours.")
	Dialog.Start()
end
