--[[
    Script Name    : SpawnScripts/IsleRefuge1/MasterMalvonicus.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.03 06:09:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local Research = 5757

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "stare", 0, 0, Spawn)
	Dialog.AddDialog("What on Norrath are you doing here?  Get out of my house this instant!")
	Dialog.AddVoiceover("voiceover/english/master_malvonicus/tutorial_island02/mastermalvonicus001.mp3", 2916930572, 3452710584)
    if GetQuestStep(Spawn, Research) ==5 then 
    Dialog.AddOption("I found this research notebook and completed the work described in it for you.  Apparently the person sent before me wasn't so lucky.","QuestDone")
    end
    Dialog.AddOption("I'm leaving.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function QuestDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "scold", 0, 0, Spawn)
	Dialog.AddDialog("It is about time!  I asked for that research to be completed days ago!  Wait... you are not the one I sent out previously...  No matter, these specimens will do for my research.  Here is the bracelet I promised in payment.  Now get out and leave me to my work.")
	Dialog.AddVoiceover("voiceover/english/master_malvonicus/tutorial_island02/mastermalvonicus004.mp3", 1075201494, 3603694386)
    Dialog.AddOption("Thanks.  I'll just be going now.")
	Dialog.Start()
    SetStepComplete(Spawn,Research,5)
end