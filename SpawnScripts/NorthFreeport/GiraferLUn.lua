--[[
    Script Name    : SpawnScripts/NorthFreeport/GiraferLUn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 12:06:27
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

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
	Dialog.AddDialog("Welcome to the Blue Building.  If you're here, then you know what we sell.  You can see it sparkling before you, sparkling with the allure that only gems and jewelry of such perfection exude.  Look around and see what we have for sale.  I'll be here to take your money when you decide which of our decadent pieces you desire.")
	Dialog.AddVoiceover("voiceover/english/merchant_girafer_l_un/fprt_north/mer_giraferlun.mp3", 3286802657, 1724885978)
	Dialog.AddOption("I have no interest in trinkets....")
	Dialog.Start()
end
