--[[
    Script Name    : SpawnScripts/Freeport/aFreeportvisitant.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 08:07:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(NPC) == 12 and GetGender(NPC) == 1 then
    local choice = math.random(1, 7)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_900b92c8.mp3", "Blood, lots of blood on the battlefield.", "confused", 3309525058, 2311238979, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_aef9ec6e.mp3", "The best dreams are the flashbacks of the battlefield.", "chuckle", 34784682, 541558536, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b6f6d58b.mp3", "Sharp teeth, the better to tear flesh with.", "glare", 1727328703, 3032211199, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_82b39f6b.mp3", "In war there is no room for fear.", "agree", 139095494, 3401742216, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_b11c99a1.mp3", "Make war not love.", "flirt", 163636935, 1865034471, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_7f5bc8b5.mp3", "Armor could be useful. But I've never needed it.", "smirk", 602319056, 3467693375, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/ogre/ogre_eco_evil_1_hail_gm_4b96e4f1.mp3", "I've lived this long thanks to my ability to kill.", "thumbsup", 1295486986, 820950525, Spawn)
end
   end
      end
        

function respawn(NPC)

end

