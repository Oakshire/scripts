--[[
	Script Name		:	AGigglegibberGoblinGamblinGameVendor.lua
	Script Purpose	:	a Gigglegibber Goblin Gamblin' Game Vendor
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
	Dialog.AddOption("How did a goblin get in here?  Don't you kill people?", "dlg_2")
	Dialog.AddOption("I think I'd rather keep my money, thanks.")

	Dialog.Start()

	--[[	Say() from this NPC


			Orphaned PlayFlavors
	--]]

end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("Gigglegibber goblins not kill people! War no fun at all.  Gigglegibber goblins like shiny coins and funny things! We like frogs, fluffy kittens, potatoes... You have potatoes?")
	Dialog.AddOption("Why are potatoes funny?", "dlg_3")
	Dialog.AddOption("On second thought, I'll be going now.")

	Dialog.Start()
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)

	Dialog.AddDialog("They tasty! Not funny!... though Gribbik carved funny face in a potato once.  That was funny until he eated it.  Hey! No try to tricks me with talk about potatoes.  You still pays ten shiny coins for ticket!  Buy many tickets! If you buys more maybe you win more than many shiny coins!")
	Dialog.AddOption("I'll think about it.")

	Dialog.Start()
end