--[[
    Script Name    : SpawnScripts/QueensColony/Vim.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Vim dialog
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    
    choice = math.random(1,3)
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_187fc6bb.mp3", "I am busy right now...", "no", 1835666244, 487490745, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_481beac8.mp3", "I love traveling the seas... Oh! Did you need something?", "sniff", 2187888771, 2112320089, Spawn)
    else
        Say(NPC, "The Far Journey is a beautiful ship, aint she?")
    end
end