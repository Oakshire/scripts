--[[
	Script Name		: SpawnScripts/LongshadowAlley/LotniKIria.lua
	Script Purpose	: Lotni K`Iria
	Script Author	: torsten
	Script Date		: 2022.07.19
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"

local TheMissingBook = 5681
local MagicalRetribution = 5682

function spawn(NPC)
    ProvidesQuest(NPC, TheMissingBook)
    ProvidesQuest(NPC, MagicalRetribution)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasQuest(Spawn, TheMissingBook) and not HasCompletedQuest(Spawn, TheMissingBook) then
        OfferQuest(NPC, Spawn, TheMissingBook)
    end
    if HasCompletedQuest(Spawn, TheMissingBook) then
        if not HasQuest(Spawn, MagicalRetribution) and not HasCompletedQuest(Spawn, MagicalRetribution) then
            OfferQuest(NPC, Spawn, MagicalRetribution)
        end
    end 
    if GetQuestStep(Spawn, TheMissingBook) == 2 then
        FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("That Ratonga did not have the book? The Black Magi must have stolen it then!")
	    Dialog.AddOption("I could check that... for the right price.")
	    Dialog.Start()
        SetStepComplete(Spawn, TheMissingBook, 2)
    elseif GetQuestStep(Spawn, MagicalRetribution) == 2 then
	    FaceTarget(NPC, Spawn)
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("You have killed the Magi? Yes!")
	    Dialog.AddOption("No problem Lotni. Good luck!")
	    Dialog.Start()
        SetStepComplete(Spawn, MagicalRetribution, 2)
    else
	    RandomGreeting(NPC, Spawn)
    end    
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/lotni_k_iria/fprt_hood05/100_std_de_female_lotni_kiria_callout_462c415.mp3", "Another refugee... What do YOU want, peasant?", "", 1297124107, 2736745015, Spawn, 0)
	end
end