do
local function run(msg, matches)
local support = 120916252
local user = msg.from.id

    if matches[1]:lower() == "add admin" or "tosupport" or "support" then
       channel_invite_user("channel#id"..support, 'user#id'..user, ok_cb, false)
       send_large_msg("channel#id"..support, 'Hi @'..msg.from.username.. ' \nWelcome To group')
       return "You Have Been Added bot owner to group"
    end
 end
return {
  patterns = {
    "^([Aa]dd [Aa]dmin)$",
    "^[!/]([Aa]dd [Aa]dmin)$",
    "^([Tt]o[Ss]upport)$",
    "^[!/]([Tt]o[Ss]upport)$",
    "^([Ss]upport)$",
    "^[!/]([Ss]upport)$"
  },
  run = run
}
end
