local isAdmin={['TheLuaDoge'] = true} --Make sure to change my name to urs
for _,v in pairs(game.Players:GetPlayers()) do --Gets all the player
v.Chatted:connect(function(msg) -- MSG : Message, v : Player
if msg:sub(1,5) == ";kill" and isAdmin[v.Name] then --if player is admin and said ;kill
local victim = msg:sub(7) --gets victim
game.Players[victim].Character:BreakJoints() --destroys victim's character
elseif msg:sub(1,8) == ";respawn" and isAdmin[v.Name] then --if player is admin and said ;respawn
local victim = msg:sub(10) --gets victim
game.Players[victim]:LoadCharacter() --reloads character
end
end)
end

--[[
  Example:
  msg:sub(1, Length of msg)
  victim = msg:sub(Length of msg + 2)
  Do the rest by yourself.
--]]
