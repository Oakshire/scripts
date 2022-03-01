--[[
    Script Name    : SpawnScripts/TimorousDeep/RozokalNibamok.lua
    Script Author  : Ememjr
    Script Date    : 2021.01.28 10:01:51
    Script Purpose : 
                   : 
--]]
local BecomingACrafter = 5210
function spawn(NPC)
   ProvidesQuest(NPC, 11)
end
function hailed(NPC, Spawn)
   if HasQuest(Spawn, BecomingACrafter) then
      SetStepComplete(Spawn, BecomingACrafter, 1)
   end

	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
if GetQuestStep(Spawn, HarvestTutorial) == 8 then
	    SetStepComplete(Spawn, HarvestTutorial, 8)
		conversation = CreateConversation()
else
   if HasQuest(Spawn, HarvestTutorial) then
      Say (NPC,"You can find harvests for making level 1-9 items in areas where level 1-9 adventures go to hunt.")
   end
   if not HasCompletedQuest(NPC,11) and not HasQuest(Spawn, HarvestTutorial) then
      AddConversationOption(conversation, "Yes please, I don't know much about that stuff.", "Option1")
      AddConversationOption(conversation, "Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.", "Option1")
      AddConversationOption(conversation, "No thanks, I have other things to do right now.")
      StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        if not HasCompletedQuest(Spawn, 11) then
           OfferQuest(NPC, Spawn,11)
           AddConversationOption(conversation, "I'll get right on it.")
	   StartConversation(conversation, NPC, Spawn, "Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")

	end
   
	end



function respawn(NPC)

end


