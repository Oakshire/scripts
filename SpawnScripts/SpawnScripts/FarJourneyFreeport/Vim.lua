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

function hailed(NPC, Spawn)
    choice = math.random(0, 3) 
	
    FaceTarget(NPC, Spawn)
	
	if choice == 0 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_c5d0b965.mp3", "I have some tattered clothes for sale, want to take a look?", "agree", 1974233264, 2156679701)

	elseif choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_6c0c3c22.mp3", "The Far Journey is a beautiful ship, ain't she?", "smirk", 139722646, 2672074756)

	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_d3204929.mp3", "Looking for something sturdy to wear?", "nod", 696787059, 2593820637)

	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_187fc6bb.mp3", "I am busy right now...", "no", 1835666244, 487490745)

	end
end

function respawn(NPC)

end

function targeted(NPC, Spawn)
    if GetDistance(Spawn, NPC) < 10 then
        hailed(NPC, Spawn)
    end
end