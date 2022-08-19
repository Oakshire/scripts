--[[
    Script Name    : SpawnScripts/TimorousDeep/ThrawkForOrk.lua
    Script Author  : Ememjr
    Script Date    : 2021.01.27 12:01:31
    Script Purpose : 
    Modified Date  :8/19/22 
    Modified Notes : converted to dialog module and added VO
                   
--]]
require "SpawnScripts/Generic/DialogModule"
function spawn(NPC)
     ProvidesQuest(NPC,5210)
end

function hailed(NPC, Player)
	FaceTarget(NPC, Player)
	Dialog.New(NPC, Player)
	Dialog.AddDialog("If you have any interest in crafting, perhaps you should visit Rozokal Niba'mok within Gorowyn.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3")
	Dialog.AddRequirement(REQ_QUEST_DOESNT_HAVE_QUEST, 5210)
	Dialog.AddRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, 5210)
	Dialog.AddOption("That sounds like a good idea.","OfferQuest5210")
	Dialog.AddOption("Maybe later.")
	

	Dialog.AddDialog("Work Hard!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3")
	Dialog.Start()
end
function OfferQuest5210(NPC, Spawn)
   OfferQuest(NPC, Spawn, 5210)
end
function respawn(NPC)
   spawn(NPC)
end

