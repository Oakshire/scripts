--[[
	Script Name	: SpawnScripts/SouthQeynos/AmrenTalbot.lua
	Script Purpose	: Amren Talbot 
	Script Author	: Cynnar, premierio015
	Script Date	: 28.10.2021
	Script Notes	: dialogues for quest "A Crumpled Note" and "Spellbook Fragments" (2022.02.22 - Dorbin)
--]]
require "SpawnScripts/Generic/DialogModule"

local ACrumpledNote = 5374 -- A Crumpled Note Mages Version
local spellbookFrags = 5485

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Focus is the key to unlocking any illusion.  The mind's eye can do many wondrous things, once it focuses.")
	Dialog.AddVoiceover("voiceover/english/amren_talbot/qey_south/amrentalbot000.mp3", 186833269, 2706325328)
	if GetQuestStep(Spawn, ACrumpledNote)==1 then
	Dialog.AddOption( "I found this note in the Down Below, I think the mages here at the towers could decipher it.", "quest_complete")
	end
	if GetQuestStep(Spawn, spellbookFrags)==1 then
	Dialog.AddOption("I found this fragment of what appears to be a spell book. It came from the old mage tower in the forest ruins.", "quest_complete2")
    end
    Dialog.AddOption("I'm not one for thinking about illusions. ")
	Dialog.Start()
end

function quest_complete2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Have you? Let me take a look at that... Yes, this is what we are looking for! Allow me to defray any expenses you a incurred finding this piece. Here you are.")
	Dialog.AddVoiceover("voiceover/english/amren_talbot/qey_south/amrentalbot001.mp3",  3750992893, 2423832468)
	Dialog.AddOption("Thank you.","Reward2")
	Dialog.Start()
end

function Reward2 (NPC,Spawn)
    SetStepComplete(Spawn, spellbookFrags, 1)
  end  

function Reward1 (NPC,Spawn)
    SetStepComplete(Spawn, spellbookFrags, 1)
  end  

function quest_complete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("An interesting find, though I doubt it bears much in the realm of truth.  Nevertheless, I shall bring this to my superior's attention.  I suppose I should grant you token for your time. Here you are.")
	Dialog.AddVoiceover("voiceover/english/amren_talbot/qey_south/amrentalbot002.mp3",  2532326758, 3659967005)
	Dialog.AddOption("I would appreciate it if you would.","Reward1")
	Dialog.Start()
end

   