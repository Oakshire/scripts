--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Vim.lua
    Script Author  : Cynnar
    Script Date    : 2019.05.19 12:05:02
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, player)	
    choice = math.random(1, 5) 	
    FaceTarget(NPC, player)	
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_c5d0b965.mp3", "I have some tattered clothes for sale, want to take a look?", "", 1974233264, 2156679701)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_6c0c3c22.mp3", "The Far Journey is a beautiful ship, ain't she?", "", 139722646, 2672074756)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_d3204929.mp3", "Looking for something sturdy to wear?", "", 696787059, 2593820637)
	elseif choice == 4 then
		--PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_187fc6bb.mp3", "I am busy right now...", "", 1835666244, 487490745)
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_481beac8.mp3", "I love traveling the seas... Oh! Did you need something?", "", 2187888771, 2112320089)
	else
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02_fvo_005.mp3", "The Far Journey's a beautiful ship, ain't she?", "",3585442471, 604828909)
	end
	if GetTutorialStep(player) == 24 then
		InstructionWindow(player, -1.0, "This is the merchant screen where all buying and selling takes place. Money comes in four denominations: copper, silver, gold, and platinum. Each type of coin is worth 100 times more than the previous one. For example, 100 copper pieces equals 1 silver piece. But right now, as this display shows, you have no money, so left click on the sell tab.", "voiceover/english/narrator/boat_06p_tutorial02/narrator_021_6c80e66e.mp3", 1226703760, 969427050, "tutorial_stage_25", "Click on the 'Sell' tab in the merchant window.", "pane Merchant Sell")
		FlashWindow(player, "Inventory.Merchant.PlatinumCoinIcon", 8.0)
		FlashWindow(player, "Inventory.Merchant.GoldCoinIcon", 8.0)
		FlashWindow(player, "Inventory.Merchant.SilverCoinIcon", 8.0)
		FlashWindow(player, "Inventory.Merchant.CopperCoinIcon", 8.0)
	end
end

function respawn(NPC)

end

function targeted(NPC, Player)	
    
end