require 'telegram_bot'
token = '1154716442:AAHD2q6qJgNYES2FIAJboHns5DzYzPetyTg'
bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
    case command
    when /admin/i
      reply.text = "UltimaNecat Admins are
                    Malum (leader)
                    Raspu (Co-leader)

                    ABTeufel (COACH)
                    Managers: Verox, Sonja(Peque), Mustafa"
    when /rooster/i
      reply.text = "Team Name: B13 NECAT CIS Team
Manager: Mustafa Tawil
Rooster:
Name: B13ŌFEDERAL
ID: 5404787812
Name: B13ŌKOZYR
ID: 543378543
Name: NECATsayman
ID: 5440090314
Name: dstnyTwize
ID: 522489007

Team Name: UltimaNecat DE
Team Location: 🇪🇺/🇩🇪
Team Manager: @Pequesita#0031
Players:
P1 | NECATmalum
P2 |NECATpeace
P3 |NECATSAYMAN
P4 |NECATtjümay
S1 |NECATverox
S2 |NECATnoSkill
S3 |NECATzuhn77
S4 | NECATbreax
S5 | NECATGeneral

Team name: ULTIMA NECAT ES
Team Manager: @Pequesita#0031
P1.NECATbardot 5193062405
P2.NECATqloco 580187719
P3.NECATusú 5239544712
P4.NECATraspu 549609761
P5.NECAT425 529978024"
when /help/i
  reply.text = "/rooster to see our Teams and Players
  /admin to see our Admins"
when /sucuk/i
  reply.text = "TÜMAY IST KACKE 🤖"
    else
      reply.text = "I have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end
