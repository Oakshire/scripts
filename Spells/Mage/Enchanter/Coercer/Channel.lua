--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Channel.lua
    Script Author  : neatz09
    Script Date    : 2019.10.16 10:10:48
    Script Purpose : 
                   : 
--]]

-- Distributes the group members' total combined power evenly among all the members
--need to loop the group memeber and add up all the power then divide by # of group members and loop over them again and set them
function cast(Caster, Target)  
local group = GetGroup(Caster)
    local totalpwr = 0
    local members = table.getn(group)
    if group ~= nil then 
        for k, v in ipairs(group) do
            totalpwr = totalpwr + GetPower(v)
        end

        for k, v in ipairs(group) do
            SetPower(v, totalpwr / members)
        end
    end
end