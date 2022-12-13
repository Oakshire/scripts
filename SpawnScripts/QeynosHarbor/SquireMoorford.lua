--[[
	Script Name	: SpawnScripts/QeynosHarbor/SquireMoorford.lua
	Script Purpose	: Squire Moorford <Qeynos Guard>
	Script Author	: Dorbin
	Script Date	: 2022.12.10
	Script Notes	: Quest script is fabricated, but based loosely from japanese translations
--]]

require "SpawnScripts/Generic/DialogModule"
local Quest2 = 5788

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello!  How can I help you? It's my proud duty to help keep this harbor safe!")
	Dialog.AddVoiceover("voiceover/english/squire_moorford/qey_harbor/privatemoorford000.mp3", 3116776153, 2836450585)
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)>=1 and GetQuestStep(Spawn,Quest2)<=3 and not QuestStepIsComplete(Spawn,Quest2,3) then
	Dialog.AddOption("What drives you to be a guard?","Dialog2")
    end
    Dialog.AddOption("Keep up the good work!")
	Dialog.Start()
end

function Dialog2(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Oh... I suppose I haven't thought about it in a while. I guess the idea that I am a protector from the troubles of the world, and all its chaos, gives me drive to keep our citizens safe. The bulwark against tyrany and all that. Sounds almost romantic, doesn't it?")
	Dialog.AddVoiceover("voiceover/english/squire_moorford/qey_harbor/privatemoorford001.mp3", 3116776153, 2836450585) --WE DON'T HAVE THE KEYS 2022
    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
    Dialog.AddOption("Are you ever afraid? ","Dialog3")	
	Dialog.Start()
end

function Dialog3(NPC,Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)   
 	Dialog.AddDialog("Absolutely! I would be a fool to not experience fear occasionally. It is how I channel that fear which is the real test. That is why I became a guard, to give Qeynos and her citizens peace of mind to live their lives.")
	Dialog.AddVoiceover("voiceover/english/squire_moorford/qey_harbor/privatemoorford002.mp3", 3116776153, 2836450585)--WE DON'T HAVE THE KEYS 2022
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddOption("Well don't lower your guard, and thank you for your protection!","Dialog4")	
	Dialog.Start()
end

function Dialog4(NPC,Spawn)
     FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "salute", 0, 0)
    SetStepComplete(Spawn,Quest2,3)
end
