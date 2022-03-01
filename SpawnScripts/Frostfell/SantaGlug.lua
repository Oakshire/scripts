--[[
	Script Name		:	SantaGlug.lua
	Script Purpose	:	Santa Glug
	Script Author	:	Neatz09
	Script Date		:	11/22/2019
	Script Notes	:	Santa glug the giftgiver script
--]]

require "SpawnScripts/Generic/DialogModule"
require "SpawnScripts/Generic/PlayerHistory"
local ITEM_IDS = {65340, 107779, 65719}
function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    
    local rand = math.random(1,2)
    if rand == 1 then
        Say(NPC, "Ho, ho, ho!", Spawn)
    else
        Say(NPC, "Ho, ho, ho!  Jolly-time Frostfell for all!", Spawn)    
    end   

    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Happy Frostfell, ".. GetName(Spawn) .." !!I have gifties galore!  I have one special for you!")
    Dialog.AddOption("Thank you!", "Thanks")
    Dialog.AddOption("I don't accept gifts from strangers.")
    Dialog.Start()

end

function Thanks(NPC, Spawn)
    local present_timestamp = GetPlayerHistory(Spawn, HISTORY.FROSTFELL_SANTA_GLUG)
    if present_timestamp ~= nil then
        present_timestamp  = present_timestamp  + (18 * 60 * 60)
    end

    if present_timestamp == nil or os.time(os.date("!*t")) > present_timestamp then
        -- give gift
        Say(NPC, "Here you go, buddy-friend.  Have a wonderful Frostfell.", Spawn)
        SetPlayerHistory(Spawn, HISTORY.FROSTFELL_SANTA_GLUG, os.time(os.date("!*t")))       
local rand = math.random(1,3)
local item = ITEM_IDS[rand]
SummonItem(Spawn, item, 1)
    else
        Say(NPC, "Sorry, buddy-friend, but I don't have a new gifty for you yet.  You come back one day from when you got last gifty.  Then I give another!  Happy Frostfell!", Spawn)
    end
end

