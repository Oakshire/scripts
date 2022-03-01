--[[
    Script Name    : SpawnScripts/Freeport/Mallium.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 08:08:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_e470139a.mp3", "Looking for the best goods in the whole of Freeport?  Well, my friend, you've come to the right place!", "royalwave", 3779064899, 1082401525, Spawn) 
    elseif choice  == 2 then
    PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_8d817f98.mp3", "Here is what the city has to offer, my friend.  If you have any questions at all about the stock, please don't hesitate to ask.", "agree", 1804906732, 3683797889, Spawn)
    elseif choice  == 3 then
    PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_4ea1b76b.mp3", "At the prices I'm going to offer you, friend, I should have the Militia arrest you on the spot for robbing me!", "point", 656626023, 4153025559, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/broker_mallium/fprt_west/031_con_merchant_mallium_halfelf_1_hail_5362df75.mp3", "Don't worry, friend, if it's not on our lists then the goods do not exist.", "no", 2182517673, 1430349366, Spawn)
    end
end

function respawn(NPC)

end

