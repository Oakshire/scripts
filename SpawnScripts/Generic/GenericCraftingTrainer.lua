--[[
	Script Name	: SpawnScripts/Generic/GenericCraftingTrainer.lua
	Script Purpose	: <Crafting Trainer>
	Script Author	: theFoof (SendSecondaryChoice() by Jabantiz)
	Script Date	: 2013.10.20
	Script Notes	: This script handles crafting trainers
--]]

local artisan_ess_1 = 31371
local artisan_ess_2 = 31373
local ARTISAN = 1
local CRAFTSMAN = 2
local PROVISIONER = 3
local WOODWORKER = 4
local CARPENTER = 5
local OUTFITTER = 6
local ARMORER = 7
local WEAPONSMITH = 8
local TAILOR = 9
local SCHOLAR = 10
local JEWELER = 11
local SAGE = 12
local ALCHEMIST = 13

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	CraftingTrainerHail(NPC, Spawn)
end

function CraftingTrainerHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if GetTradeskillLevel(Spawn) < 9 then
		if not HasBooks(Spawn) or GetTradeskillLevel(Spawn) < 2 then
			AddConversationOption(conversation, "Yes, please teach me.", "GiveBooks")
			AddConversationOption(conversation, "No, not at the moment.", "Chat1")
			StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade.  Good.  We can always use talented artisans.  I can help you get started.  Would you be interested?")
		else
			Chat2(NPC, Spawn)
		end
	elseif GetTradeskillLevel(Spawn) == 9 then
		Chat4(NPC, Spawn)
	elseif GetTradeskillLevel(Spawn) == 19 then
		Chat5(NPC, Spawn)
	elseif GetTradeskillLevel(Spawn) < 20 then
		Chat2(NPC, Spawn)
	else
		PlayFlavor(NPC, "", "You have learned everything I have to teach.  You are free to use our crafting facilities to hone your skills and master your craft.", "hello", 0, 0, Spawn)
	end
end


function HasBooks(Spawn)
	local has_books = true

	--check if the player has certain recipe books
	if not HasRecipeBook(Spawn, artisan_ess_1) and not HasItem(Spawn, artisan_ess_1, 1) then
		has_books = false
	end
	if not HasRecipeBook(Spawn, artisan_ess_2) and not HasItem(Spawn, artisan_ess_2, 1) then
		has_books = false
	end
	
	return has_books
end

function GiveBooks(NPC, Spawn)
	--give recipe books if not scribed and does not have
	if not HasRecipeBook(Spawn, artisan_ess_1) and not HasItem(Spawn, artisan_ess_1, 1) then
		SummonItem(Spawn, artisan_ess_1, 1)
	end
	if not HasRecipeBook(Spawn, artisan_ess_2) and not HasItem(Spawn, artisan_ess_2, 1) then
		SummonItem(Spawn, artisan_ess_2, 1)
	end
	if GetTradeskillLevel(Spawn) < 2 then
		SetTradeskillClass(Spawn, ARTISAN)
		SetTradeskillLevel(Spawn, 2)
	end
	Chat3(NPC, Spawn)
end

function Chat1(NPC, Spawn)
	PlayFlavor(NPC, "", "Oh, well feel free to come back later whenever you'd like.", "", 1689589577, 4560189, Spawn)
end

function Chat2(NPC, Spawn)
	PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your profession.", "", 1689589577, 4560189, Spawn)
end

function Chat3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will start on that now.")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
end

function Chat4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "My name is " .. GetName(Spawn) ..".", "SendSecondaryChoice")
	AddConversationOption(conversation, "No thank you, I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "I'm glad you have come back for more training, it looks like you've learned quite a bit in a very short time.  I can certify you in your chosen trade class. Before I begin your paperwork, I'll need your name.")
end

function Chat5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ".", "Send" .. GetTradeskillClassName(Spawn) .. "Choice")
	StartConversation(conversation, NPC, Spawn, "I'm glad that you continued on as a " .. GetTradeskillClassName(Spawn) .. " and came back to advance your skills.  I can certify you in your chosen trade specialty. I need your name before I can start your paperwork.")
end

function SendSecondaryChoice(NPC, Spawn)
	window = CreateOptionWindow()
    AddOptionWindowOption(window, "Craftsman", "Craftsmen become carpenters, provisioners, or woodworkers.  They make furniture and strong boxes, food, drink, bows, arrows, totems, wooden weapons, and wooden shields.", 1, 420, "select_craftsman")
    AddOptionWindowOption(window, "Outfitter", "Outfitters become armorers, tailors, or weaponsmiths.  They make plate and chainmail armor, heavy shields, cloth and leather armor, casual clothing, backpacks, hex dolls, and metal weapons.", 1, 411, "select_outfitter")
    AddOptionWindowOption(window, "Scholar", "Scholars become alchemists, jewelers, and sages.  They make spell and combat art upgrades for adventurers, potions, poisons, and jewelry.", 1, 396, "select_scholar")
    SendOptionWindow(window, Spawn, "Select A Profession")
end

function select_craftsman(NPC, Spawn)
   SetTradeskillClass(Spawn, CRAFTSMAN)
   SetTradeskillLevel(Spawn, 10)
end

function select_outfitter(NPC, Spawn)
   SetTradeskillClass(Spawn, OUTFITTER)
   SetTradeskillLevel(Spawn, 10)
end

function select_scholar(NPC, Spawn)
   SetTradeskillClass(Spawn, SCHOLAR)
   SetTradeskillLevel(Spawn, 10)
end

function SendOutfitterChoice(NPC, Spawn)
	window = CreateOptionWindow()
	AddOptionWindowOption(window, "Armorer", "Armorers are skilled at creating plate and chainmail armor.", 2, 40, "select_armorer")
	AddOptionWindowOption(window, "Weaponsmith", "Weaponsmiths specialize in making metal weapons of all damage types.", 2, 41, "select_weaponsmith")
	AddOptionWindowOption(window, "Tailor", "Tailors make cloth and leather armor, casual clothing, backpacks, hex dolls, and ammo holders.", 2, 42, "select_tailor")
	SendOptionWindow(window, Spawn, "Select A Class")
end

function select_armorer(NPC, Spawn)
	SetTradeskillClass(Spawn, ARMORER)
	SetTradeskillLevel(Spawn, 20)
end

function select_weaponsmith(NPC, Spawn)
	SetTradeskillClass(Spawn, WEAPONSMITH)
	SetTradeskillLevel(Spawn, 20)
end

function select_tailor(NPC, Spawn)
	SetTradeskillClass(Spawn, TAILOR)
	SetTradeskillLevel(Spawn, 20)
end

function SendScholarChoice(NPC, Spawn)
	local window = CreateOptionWindow()
	AddOptionWindowOption(window, "Sage", "Sages specialize in making spell upgrade scrolls for mages and priests.", 2, 37, "select_sage")
	AddOptionWindowOption(window, "Alchemist", "Alchemists make fighter combat art upgrades, potions, and poisons.", 2, 38, "select_alchemist")
	AddOptionWindowOption(window, "Jeweler", "Jewelers make upgrades for scout combat arts, as well as jewelery such as rings, earrings, necklaces, bracelets, and belts.", 2, 39, "select_jeweler")
	SendOptionWindow(window, Spawn, "Select A Class")
end

function select_sage(NPC, Spawn)
	SetTradeskillClass(Spawn, SAGE)
	SetTradeskillLevel(Spawn, 20)
end

function select_alchemist(NPC, Spawn)
	SetTradeskillClass(Spawn, ALCHEMIST)
	SetTradeskillLevel(Spawn, 20)
end

function select_jeweler(NPC, Spawn)
	SetTradeskillClass(Spawn, JEWELER)
	SetTradeskillLevel(Spawn, 20)
end

function SendCraftsmanChoice(NPC, Spawn)
	local window = CreateOptionWindow()
	AddOptionWindowOption(window, "Carpenter", "Carpenters make furniture of all types, strong boxes, and a variety of sales crates.", 2, 44, "select_carpenter")
	AddOptionWindowOption(window, "Provisioner", "Provisioners make food and drink that will regenerate health and power faster between battles.", 2, 43, "select_provisioner")
	AddOptionWindowOption(window, "Woodworker", "Woodworkers make wooden weapons, totems, bows, arrows, and wooden shields.", 2, 45, "select_woodworker")
	SendOptionWindow(window, Spawn, "Select A Class")
end

function select_carpenter(NPC, Spawn)
	SetTradeskillClass(Spawn, CARPENTER)
	SetTradeskillLevel(Spawn, 20)
end

function select_provisioner(NPC, Spawn)
	SetTradeskillClass(Spawn, PROVISIONER)
	SetTradeskillLevel(Spawn, 20)
end

function select_woodworker(NPC, Spawn)
	SetTradeskillClass(Spawn, WOODWORKER)
	SetTradeskillLevel(Spawn, 20)
end