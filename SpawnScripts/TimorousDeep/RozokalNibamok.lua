--[[
    Script Name    : SpawnScripts/TimorousDeep/RozokalNibamok.lua
    Script Author  : Ememjr
    Script Date    : 2021.01.28 10:01:51
    Script Purpose : 
               
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local BecomingACrafter = 5210
local HarvestTutorial = 11
function spawn(NPC)
   ProvidesQuest(NPC, HarvestTutorial)
end
function hailed(NPC, Player)
    if HasQuest(Player, BecomingACrafter) then
        SetStepComplete(Player, BecomingACrafter, 1)
        --gave 150 TSexp
    end
    Say (NPC,"1")
	FaceTarget(NPC, Player)
	--greetings
	Dialog.New(NPC,Player)
	
	Dialog.AddDialog("Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	Dialog.AddRequirement(REQ_QUEST_NOT_HAS_COMPLETED_QUEST, HarvestTutorial)
	Dialog.AddRequirement(REQ_QUEST_DOESNT_HAVE_QUEST, HarvestTutorial)
	Dialog.AddOption("Yes please, I don't know much about that stuff.", "Option1")
	Dialog.AddOption("Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.", "Option1")
	Dialog.AddOption("No thanks, I have other things to do right now.")
	
	Dialog.AddDialog("You can find harvest for making level 1-9 items in areas where level 1-9 adventures go to hunt.")
	Dialog.Start()
end	
function Option1(NPC, Player)
	FaceTarget(NPC, Player)
	OfferQuest(NPC, Player, HarvestTutorial)
	--Dialog.New(NPC,Player)
--	Dialog.AddDialog("Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")
--	Dialog.AddOption("I'll get right on it.")
--	Dialog.Start()
end	

function respawn(NPC)

end



