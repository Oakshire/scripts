--[[
    Script Name    : SpawnScripts/IsleRefuge1/CaptainVarlos.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 11:09:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Qeynos = 5717
local Freeport = 5758

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail2.mp3", "Keep walking... While you still can!", "hello", 724307296, 1739482284, Spawn, 0)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, Qeynos) or HasQuest(Spawn, Freeport) then
    Dialog1(NPC, Spawn)
    else
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = MakeRandomInt(1,3)
    if voice == 1 then
	PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail2.mp3", "Ya' know, me hates doing paperwork! Arrrr!", "grumble", 724307296, 1739482284, Spawn, 0)
	elseif voice == 2 then
		PlayFlavor(NPC, "voiceover/english/captain_varlos//tutorial_island02_fvo_hail1.mp3", "Stand ye' back, matey... me needs some room.", "glare", 3214674088, 3921408430, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/captain_varlos/tutorial_island02_fvo_hail3.mp3", "Ya' best be sure ta' explore the whole island, ya' hear!", "agree", 1155995604, 1406357895, Spawn)
	end
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahoy! Good ta' see ya' here. I was just telling the Duke what happened on the Far Journey.")
	Dialog.AddVoiceover("voiceover/english/island_of_refuge/captain_draik_varlos/ior_capnvarlos_001.mp3", 4236315164, 382405206)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddOption("It was nothing. I was happy to help.", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I would love ta' tip an ale back wit' ya', but me gots ta' get this paperwork done. Why don't ya' speak ta' Duke Ferrin, he can explain some things for ya'.")
	Dialog.AddVoiceover("voiceover/english/captain_varlos/tutorial_island01/varlos/varlos_ally_firsttalk_02.mp3", 2666783191, 241094847)
		PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Ok, I will do that.", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thanks fa' everything, really. Ya' helped save me ship.")
	Dialog.AddVoiceover("voiceover/english/island_of_refuge/captain_draik_varlos/ior_capnvarlos_003.mp3", 1693533028, 3782277754)
	Dialog.AddOption("Think nothing of it.")
	Dialog.Start()
end



function respawn(NPC)
	spawn(NPC)
end