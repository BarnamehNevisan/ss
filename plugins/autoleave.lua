do

local function run(msg, matches)
  local bot_id = 112564047
    if matches[1] == 'leave' and is_admin(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
      send_large_msg("chat#id"..msg.to.id, 'wait until i ask my Dad why you add me \ndadi \nOh no\nHe sayed I fuck your mother .👋👋', ok_cb, false)
      chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
      block_user("user#id"..msg.from.id,ok_cb,false)
    end
end
end
 
return {
  patterns = {
    "^(leave)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
