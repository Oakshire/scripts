--[[
    Script Name    : SpawnScripts/Castleview/inspecttop01innbookcase.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.29 03:01:15
    Script Purpose : Quest Lost Book of Arbos
                   : 
--]]

local Arbos = 5468

function spawn(NPC)
--SetRequiredQuest(NPC, Arbos, 3)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'inspect' then
		conversation = CreateConversation()
        if GetQuestStep(Spawn,Arbos)==2 then
		AddConversationOption(conversation, "'The Book of Arbos'","Book")
        end
		AddConversationOption(conversation, "Stop browsing.","CloseConversation")
		StartDialogConversation(conversation, 1, NPC, Spawn, "This is an antique bookcase of exquisite elven craftmanship. It is filled with books written in both elven tongues and common Norrathian tongue.")
    end  
end

function Book(NPC,Spawn)
		conversation = CreateConversation()
        SetStepComplete(Spawn, Arbos, 2)
		AddConversationOption(conversation, "Stop browsing.","CloseConversation")
		StartDialogConversation(conversation, 1, NPC, Spawn, "You find 'The Book of Arbos' stuffed between volumes on elvish cuisines and mini-scape gardening")
end
	    
function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end