--[[
    Script Name    : SpawnScripts/WorkshopEvil/GarfaGillgrinder.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.23 02:05:18
    Script Purpose : 
                   : 
--]]


require "SpawnScripts/Generic/DialogModule"
local ARTISAN_ESSENTIALS_VOLUME_2 = 31373

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
	voice = math.random (1,3)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1055.mp3", "", "hello", 0, 0, Spawn)	
	Dialog.AddDialog("You show interest in the crafting trade, good.  Freeport can always use talented artisans within the walls of our great city.  I can help you get started and offer you some of the basic recipes at no charge.  Would you be interested?")
	if not HasItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2, 1) or not HasRecipeBook(Spawn,ARTISAN_ESSENTIALS_VOLUME_2) then
	Dialog.AddOption("Yes, please teach me.", "Dialog2")
    elseif HasItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2, 1) or HasRecipeBook(Spawn,ARTISAN_ESSENTIALS_VOLUME_2) then
	Dialog.AddOption("I've already got the basics down.  Thanks.","Basics")
    end
	Dialog.AddOption("I actually want to learn more about crafting professions.","Professions")
	Dialog.AddOption("No, not at the moment.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	SummonItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2, 1)
	Dialog.AddDialog("There, you now have the basic recipes and the knowledge to begin crafting.  Everything else you need to get yourself started can be found right here.")
	Dialog.AddOption("I actually want to learn more about crafting professions.","Professions")
    Dialog.AddOption("I will start on that now.")
	Dialog.Start()
end


function Basics(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("In that case, if you're looking for more training you'll need to head to the mainland.  They can teach you more advanced techniques and refine your craft.")
	Dialog.AddOption("I actually want to learn more about crafting professions.","Professions")
    Dialog.AddOption("Good to know.  I'll look into it.")
	Dialog.Start()
end

function Professions(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Crafting professions are taught by master crafters on the mainland.  You'll be able to learn techniques on becoming an Outfitter, Craftsman, or Scholar. All three specialize even further once you've got a handle on the techniques.")
	Dialog.AddOption("Tell me about Craftsmen","Craftsman")
	Dialog.AddOption("Tell me about Outfitters","Outfitter")
	Dialog.AddOption("Tell me about Scholars","Scholars")
	Dialog.AddOption("Wow.  Sounds like I have some work to do!")
	Dialog.Start()
end

function Outfitter(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Outfitters are the main providers of metal weapons and and all sorts of armor.  Cloth, leather, and metal armor are all developed by their skills.")
	Dialog.AddOption("Tell me about Craftsmen","Craftsman")
	Dialog.AddOption("Tell me about Scholars","Scholars")
	Dialog.AddOption("Wow.  Sounds like I have some work to do!")
	Dialog.Start()
end

function Scholars(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Scholars dabble in precision and sometimes magic for their crafts.  They provide jewelery, potions, and scrolls for additional power.  Scholars are also the primary provider of crafted advanced skill training for all adventurers.")
	Dialog.AddOption("Tell me about Craftsmen","Craftsman")
	Dialog.AddOption("Tell me about Outfitters","Outfitter")
	Dialog.AddOption("Wow.  Sounds like I have some work to do!")
	Dialog.Start()
end

function Craftsman(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A Craftsman specializes in the more organic side of crafting.  They can shape wood into weapons, enchanted totems, and home furniture.  They are also the best known chefs and brewers that provide sustenance to hungry bellies.")
	Dialog.AddOption("Tell me about Outfitters","Outfitter")
	Dialog.AddOption("Tell me about Scholars","Scholars")
	Dialog.AddOption("Wow.  Sounds like I have some work to do!")
	Dialog.Start()
end