if not C_AddOns.IsAddOnLoaded('ElvUI') then return end
local E = unpack(ElvUI)

E:AddTagInfo('name:nickname', "Brik Nicknames", 'Displays the nickname of the unit', 1)
E:AddTagInfo('name:nickname:short', "Brik Nicknames", 'Displays the nickname of the unit (limited to 10 characters)', 2)

E:AddTag("name:nickname", 'UNIT_NAME_UPDATE', function(unit, _, _)
  if not unit then return end

  return BrikNicknames:GetName(unit)
end)

E:AddTag("name:nickname:short", 'UNIT_NAME_UPDATE', function(unit, _, _)
  if not unit then return end

  return E:ShortenString(BrikNicknames:GetName(unit), 10)
end)
